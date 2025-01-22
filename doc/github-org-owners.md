## GitHub org owners

The following people have the GitHub "owners" permissions on the [NixOS organization](https://github.com/nixos):
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
The [Steering Committee (SC)](./governance.md) gives them autonomy to handle
small day-to-day tasks and expects them to escalate bigger decisions.
The following decision tree describes the org owners authority:

**Is the change impactful or controversial?**
- *Yes*: **Is the change pre-approved by a body with corresponding authority?** This includes:
  - Arbitrary decisions by the Steering Committee.
  - Moderation decisions by the moderation team.
  - Changes from approved RFCs.

  *Yes*: Any single org owner can implement it.

  *No*: Not within the org owners authority, should be escalated to the SC.

- *No*: **Is the change one of the following?**
  - Adding new org members to allow review requests.
  - Creating new unprivileged Nixpkgs teams for mention.
  - Updating repository meta information.
  - Changes requested by a repository admin that have no impact outside their repository.

  *Yes*: Any single org owner can implement it.

  *No*: Approval from at least one other org owner is needed to implement it.

### Responsibilities

- Receive and process requests.
  - We expect org owners to be subscribed to the NixOS/org repo.
  - Each request should land in at least 2 org owners inboxes of some kind.
- Ensure that all non-trivial and non-sensitive org owner actions are
  publicly logged in either of the above channels.
- Escalate requests outside the given authority to the Steering Committee.
- Maintain the [GitHub organisation documentation](./github.md).
- Act as janitor for this repository.
