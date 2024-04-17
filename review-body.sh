#!/usr/bin/env bash
set -euo pipefail

# This script outputs the contents of the regular review issue, see ./github/workflows/review.yml

rev=$(git rev-parse HEAD)

echo "Because the documentation in this repository may slowly deviate from reality, this monthly issue is created to regularly review the files.

If you're pinged, please ensure that the relevant documentation matches reality.

- If that's not the case, please investigate how this happened and address this so it doesn't happen again.

  To mitigate the current inconsistency:
  - If a PR was merged without updating reality, update reality to match the new documentation, then post a comment in this issue with what was done.
  - If reality was updated without a PR, open a PR to update the documentation, then post a comment in this issue with a link to the PR.

- Once the documentation matches reality, tick the checkmark.

If all checkmarks are ticked, the issue can be closed.

## Maintainers

These are all [current code owner entries](../tree/$rev/.github/CODEOWNERS):
"

listDir() {
  local indent=$1
  local dir=$2

  readarray -d '' entries < <(git -C "$dir" ls-tree "$rev" --name-only -z)
  declare -a dirs files
  for entry in "${entries[@]}"; do
    if [[ -d "$entry" ]]; then
      dirs+=("$entry")
    else
      files+=("$entry")
    fi
  done

  for entry in "${dirs[@]}" "${files[@]}"; do
    subpath=${dir:+$dir/}$entry
    link="[\`$entry\`](../tree/$rev/$subpath)"
    if [[ -d "$subpath" ]]; then
      echo "$indent- $link"
      listDir "$indent  " "$subpath"
    else
      readarray -t maintainers < <(sed -n 's/.*FileMaintainer: \(@[[:alnum:]-]*\) .*/\1/p' "$subpath")
      echo "$indent- [ ] $link: ${maintainers[*]:-"**Nobody!**"}"
    fi
  done
}

listDir "" "$PWD"
