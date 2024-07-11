#!/usr/bin/env nix-shell
#!nix-shell -i bash --pure --keep GH_TOKEN -I nixpkgs=channel:nixpkgs-unstable -p jq codeowners github-cli gitMinimal

set -euo pipefail

# This script outputs the contents of the regular review issue, see ./github/workflows/review.yml

if (( $# != 2 )); then
  echo "Usage: $0 PATH OWNER/REPO"
  exit 1
fi

root=$1
repo=$2

rev=$(git -C "$root" rev-parse HEAD)

echo "Because the documentation in this repository may slowly deviate from reality, this monthly issue is created to regularly review the files.

All files are listed below with their associated code owners, who are asked to ensure that their contents match reality.

- If that's not the case, please investigate how this happened and address it so that it doesn't happen again.

  To mitigate an inconsistency:
  - If a PR was merged without updating reality, update reality to match the new documentation, then post a comment in this issue with what was done.
  - If reality was updated without a PR, open a PR to update the documentation, then post a comment in this issue with a link to the PR.

- Once the documentation matches reality, tick the checkmark.

If all checkmarks are ticked, the issue can be closed.

## Files

These are the [current code owners](https://github.com/$repo/tree/$rev/.github/CODEOWNERS) for each file:
"

declare -A codeowners

cacheDir=${XDG_CACHE_HOME:-$HOME/.cache}/org-review-body

# Resolves a team from e.g. "@NixOS/org" to "@NixOS/foo (@bar @baz)", caching the result
resolve_team() {
  local org=$1
  local id=$2
  local resolved
  local cacheFile="$cacheDir/$org/$id"
  if [[ -f "$cacheFile" ]]; then
    cat "$cacheFile"
  else
    mkdir -p "$(dirname "$cacheFile")"
    # For a GitHub App, this needs Organization/Members/read-only access
    resolved=$(gh api \
      -H "Accept: application/vnd.github+json" \
      -H "X-GitHub-Api-Version: 2022-11-28" \
      /orgs/"$org"/teams/"$id"/members |
      jq -r 'map(.login | "@\(.)") | join(" ")')
    echo "@$org/$id ($resolved)" | tee "$cacheFile"
  fi
}

# Resolves all owners, e.g. from "@foo @NixOS/bar" to "@foo @NixOS/bar (@baz @qux)"
resolve_owners() {
  local team=$1
  local -a entries
  local result=()
  IFS=" " read -r -a entries <<< "$team"

  for entry in "${entries[@]}"; do
    if [[ "$entry" =~ @(.*)/(.*) ]]; then
      result+=("$(resolve_team "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}")")
    else
      result+=("$entry")
    fi
  done
  echo "${result[*]}"
}

while read -r file owners; do
  if [[ "$owners" != "(unowned)" ]]; then
    resolved=$(resolve_owners "$owners")
    codeowners[$file]=$resolved
  fi
done < <(cd "$root"; codeowners)

listDir() {
  local indent=$1
  local dir=$2
  local -a entries dirs files
  local subpath link

  readarray -d '' entries < <(git -C "$root/$dir" ls-tree "$rev" --name-only -z)
  # This is just so we can order directories before files,
  # which makes the result much nicer
  for entry in "${entries[@]}"; do
    subpath=${dir:+$dir/}$entry
    if [[ -d "$root/$subpath" ]]; then
      dirs+=("$entry")
    else
      files+=("$entry")
    fi
  done

  for entry in "${dirs[@]}" "${files[@]}"; do
    subpath=${dir:+$dir/}$entry
    link="[\`$entry\`](https://github.com/$repo/tree/$rev/$subpath)"
    if [[ -d "$root/$subpath" ]]; then
      echo "$indent- $link"
      listDir "$indent  " "$subpath"
    else
      echo "$indent- [ ] $link: ${codeowners[$subpath]:-"**Nobody!**"}"
    fi
  done
}

listDir "" "doc"
