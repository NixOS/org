#!/usr/bin/env bash

# Generates the mailboxes section in ../doc/freescout.md
# from the [freescout API](https://api-docs.freescout.net/)

set -euo pipefail

# Can be accessed by admins in https://freescout.nixos.org/app-settings/apiwebhooks
key=$FREESCOUT_API_KEY

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

getPage() {
  local page=$1
  local method=$2
  echo "Fetching page $page of $method" >&2
  if result=$(curl --fail-with-body -sS -X GET -G "https://freescout.nixos.org/api/$method" \
    --data-urlencode page="$page" \
    -H "X-FreeScout-API-Key: $key"); then
    jq '._embedded' <<< "$result"
    if jq -e '.page | (.totalPages != .number)' <<< "$result" >/dev/null; then
      getPage "$((page + 1))" "$method"
    fi
  else
    code=$?
    printf "%s\r" "$result" >&2
    echo "Failed with exit code $code" >&2
    exit "$code"
  fi
}

get() {
  getPage 1 "$@"
}

readarray -t rawUsers < <(get users | jq -c -s 'map(.users[])[]')

declare -a mailboxUsers

for user in "${rawUsers[@]}"; do
  id=$(jq .id <<< "$user")
  email=$(jq -r .email <<< "$user")
  if [[ "$email" =~ .*_deleted[0-9]+$ ]]; then
    echo "Warning: Deleted user $id ($email)" >&2
    valid=
  elif [[ "$email" =~ fsteam-[0-9]+@example.org ]]; then
    echo "Skipping team $id ($email)" >&2
    continue
  elif ! githubId=$(jq -e --arg email "$email" '."\($email)"' "$SCRIPT_DIR"/emails-to-github.json); then
    echo "Skipping user without github mapping $id ($email)" >&2
    continue
  elif ! githubLogin=$(gh api "/user/$githubId" --jq .login); then
    echo "Warning: User for which we couldn't get the github login $id ($email), github id $githubId" >&2
    valid=
  else
    valid=1
  fi
  readarray -t usersMailboxes < <(get "mailboxes?userId=$id" | jq -c -s 'map(.mailboxes[])[]')
  if [[ "${#usersMailboxes[@]}" -ne 0 ]] && [[ -z "$valid" ]]; then
    echo "Invalid user $id ($email) has access to mailboxes"
    exit 1
  fi
  for box in "${usersMailboxes[@]}"; do
    boxId=$(jq .id <<< "$box")
    mailboxUsers[boxId]=${mailboxUsers[boxId]:-}${mailboxUsers[boxId]:+ }@$githubLogin
  done
done

readarray -t rawMailboxes < <(get mailboxes | jq -c -s 'map(.mailboxes[])[]')

for mailbox in "${rawMailboxes[@]}"; do
  id=$(jq .id <<< "$mailbox")
  name=$(jq -r .name <<< "$mailbox")
  email=$(jq -r .email <<< "$mailbox")
  echo "1. $name <$email>: ${mailboxUsers[id]:-}"
done
