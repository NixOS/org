#!/usr/bin/env nix-shell
#!nix-shell -i bash --pure --keep GH_TOKEN -I nixpkgs=channel:nixpkgs-unstable -p codeowners github-cli

set -euo pipefail

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' exit

if (( $# != 2 )); then
  echo "Usage: $0 PATH OWNER/REPO"
  exit 1
fi

root=$1
repo=$2

# Writes all code owners into $tmp/codeowners, one user per line (without @)
while read -r -a fields; do
  # The first field is the filename
  unset 'fields[0]'
  if [[ "${fields[1]}" != "(unowned)" ]]; then
    (IFS=$'\n'; echo "${fields[*]##@}")
  fi
done < <(cd "$root"; codeowners) |
  sort -u > "$tmp/codeowners"

# Get all users with push access
gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  --method GET \
  -f permission=push \
  /repos/"$repo"/collaborators \
  -F per_page=100 \
  --paginate \
  --jq '.[].login' |
  sort > "$tmp/collaborators"

# Figure out all the owners that aren't collaborators
readarray -t unprivilegedOwners < <(comm -23 "$tmp/codeowners" "$tmp/collaborators")

if (( "${#unprivilegedOwners[@]}" == 0 )); then
  echo "All code owners have write permission"
else
  echo "There are code owners that don't have write permission. Either remove them as code owners or give them write permission:"
  for handle in "${unprivilegedOwners[@]}"; do
    echo "- [ ] @$handle"
  done
  exit 1
fi
