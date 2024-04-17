<!-- FileMaintainer: @infinisil -->

# Nix organisation

This repository aims to document the organisation of official Nix resources, such as:
- Which resources are official (domains, accounts, legal entities, ...)
- Who has permission over which resources (individuals, teams, companies, ...)
- Organisational processes/policies exist (RFCs, permission requests, ...)

This repository is only the _entry-point_ for such documentation.
More detailed organisational documentation can be delegated to other resources.

The goal of this repository is to make organisation transparent, explicit, discoverable and open to change.
Anybody is welcome to open issues/PRs to add/update documentation or propose organisational changes.

## Contribution guidelines

This repository generally doesn't need to follow any specific structure.
Organic evolution of the structure is encouraged.

Most importantly, the information in this repository should be kept up-to-date with the state of reality.
Thus, all organisational changes tracked in this repository should be proposed with a PR,
and the changes should only to be implemented when the PR is merged.
This may be done manually (e.g. by the person merging the PR) or automatically (e.g. using CD).

All files should have at least somebody in charge of keeping it up-to-date, which should be described with an entry in [CODEOWNERS](./github/CODEOWNERS). Those people will be requested for a review and be given write access to the repository, see also [permissions of this repository](./org-repo.md).

## Regular manual reviews

Unavoidibly it can also happen for reality to deviate from the documentation without a PR.
To mitigate this, all people with [code owner entries](./.github/CODEOWNERS) must regularly review their files.
This is done by [automatically opening an issue every month](./.github/workflows/review.yml) to ping all code owners.

This serves as an initial fallback, but more automatic approaches could be implemented in the future, e.g. by scraping and comparing the state.
