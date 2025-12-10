# Organisation repo

This repository itself is the entry point for documentation on official resources.
It is important that the documentation for the NixOS org governance is accurate.

The [`CODEOWNERS`](../.github/CODEOWNERS) file indicates the persons or groups who have either ownership or a stake in a document.
In addition to being a document in its own right, the named parties are added as an automatic review requests, and can merge PRs for the files that concern them.
All files in this repository need to have an entry in the `CODEOWNERS` file.
This entry serves as documentation for who the interested and relevant parties are to that section of governance.

The [GitHub org owners](./github-org-owners.md) are themselves the codeowner for the `CODEOWNERS` file.
They have permission to give more people write access to this repository.
They get requested for reviews when new people add themselves to `CODEOWNERS`, and can give the relevant parties write access to the repository.

Every person with write access can merge a PR in the repository.
The person who merges is responsible for doing so with due care.
