# Contribution guidelines

This repository generally doesn't need to follow any specific structure.
Organic evolution of the structure is encouraged.

Most importantly, the information in this repository should be kept up-to-date with the state of reality.
Thus, all organisational changes tracked in this repository should be proposed with a PR,
and the changes should only to be implemented when the PR is merged.
This may be done manually (e.g. by the person merging the PR) or automatically (e.g. using CD).

All files should have at least somebody in charge of keeping it up-to-date, which should be described with an entry in [CODEOWNERS](./.github/CODEOWNERS).
Those people will be requested for a review and be given write access to the repository, see also [permissions of this repository](./doc/org-repo.md).

## Regular manual reviews

Unavoidibly it can also happen for reality to deviate from the documentation without a PR.
To mitigate this, all people with [code owner entries](./.github/CODEOWNERS) for files in the `doc` directory must regularly review their files.
This is done by [automatically opening an issue in regular intervals](./.github/workflows/review.yml) to ping all code owners.

This serves as an initial fallback, but more automatic approaches could be implemented in the future, e.g. by scraping and comparing the state.

## Drafting notes

Text is written in Markdown.

For the sake of human-readable diffs and patches, each line must contain at most one sentence.
Long sentances may be broken into multiple lines at points of sub-sentance punctuation (e.g. comma, em-dash, semicolon) boundaries.
Markdown explicitly ignores the location of line-breaks within paragraphs, so this convention does not affect the meaning of the text.
(This rule is an instance of the general principle of "semantic line breaks", discussed at greater length at <https://sembr.org/>.)
