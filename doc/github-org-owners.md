## GitHub org owners

Both the [NixOS](https://github.com/nixos) and [NixCon](https://github.com/nixcon) GitHub organisations are official.

The following people have the GitHub "owners" permissions:
<!-- Also keep this in sync with the members of @NixOS/org! -->
- [@infinisil](https://github.com/infinisil)
- [@lassulus](https://github.com/lassulus)
- [@tomberek](https://github.com/tomberek)
- [@winterqt](https://github.com/winterqt)
- [@zimbatm](https://github.com/zimbatm)

## How to contact the team
For any GitHub-related needs, you can reach out to the org owners by either:
- Pinging [@NixOS/org](https://github.com/orgs/NixOS/teams/org)
- [Creating an issue in this repository](https://github.com/NixOS/org/issues/new).
- Messaging in the [Github org owners help desk Matrix room](https://matrix.to/#/%23org_owners:nixos.org).

### Authority and processes
This team's role is to manage and unblock users of the NixOS GitHub organization.
They have autonomy to handle small day-to-day tasks and the expectation they will escalate bigger decisions to the Steering Committee.

All org owners can individually take care of implementing:
- Decisions by bodies that have the authority to make GitHub org changes such as:
  - Arbitrary decisions by the Steering Committee.
  - Moderation decisions by the moderation team.
  - Changes from approved RFCs.
- Low-impact changes, such as:
  - Adding new org members to allow review requests.
  - Creating new unprivileged Nixpkgs teams for mention.
  - Updating repository meta information.
- Changes requested by a repository admin that have no impact outside their repository.

Org owners need approval from at least one other org owner to take care of implementing higher-impact changes that are _not controversial_, such as:
- Administering unmaintained repos.
  - Performing maintenance.
  - Giving commit access to trusted people that offer maintenance.
  - Archiving if appropriate.
- Making changes necessary to unblock automation.
- Making changes to the structure and CI of the [org repository](https://github.com/NixOS/org).
- Authoring content updates to the [GitHub organisation documentation](./github.md).

Org owners do not have authority to make other changes.

### Responsibilities

[^1]: ["Secure two-factor methods are passkeys, security keys, authenticator apps, and the GitHub mobile app"](https://docs.github.com/en/organizations/keeping-your-organization-secure/managing-two-factor-authentication-for-your-organization/requiring-two-factor-authentication-in-your-organization#requiring-secure-methods-of-two-factor-authentication-in-your-organization)

- Ensure [all org owners exclusively use secure two-factor authentication](https://github.com/orgs/NixOS/people?query=role%3Aowner+two-factor%3Asecure)[^1].
- Receive and process requests.
  - We expect org owners to be subscribed to the NixOS/org repo.
  - Each request should land in at least 2 org owners inboxes of some kind.
- Ensure that all non-trivial and non-sensitive org owner actions are publicly logged in either of the above channels.
- Escalate requests outside the given authority to the Steering Committee.
- Maintain the [GitHub organisation documentation](./github.md).
- Act as janitor for this repository.
