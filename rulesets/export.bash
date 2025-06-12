#!/usr/bin/env nix-shell
#!nix-shell -i bash -p gh jq
set -euo pipefail

REPO="${1:?Please pass the repository name as the only argument.}"

cd "$(dirname "${BASH_SOURCE[0]}")"

gh api "/repos/NixOS/$REPO/rulesets" --jq '.[] | "\(._links.self.href) \(.name)"' \
	| xargs -n2 sh -c "gh api \$0 | jq 'del(.node_id, ._links)' > $REPO/\$1.json"
