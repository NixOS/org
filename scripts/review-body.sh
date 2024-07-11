#!/usr/bin/env nix-shell
#!nix-shell -i bash --pure --keep GH_TOKEN -I nixpkgs=channel:nixpkgs-unstable -p codeowners github-cli gitMinimal

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

while read -r file owners; do
  if [[ "$owners" != "(unowned)" ]]; then
    codeowners[$file]=$owners
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
