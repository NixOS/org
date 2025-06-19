This directory contains JSON exports of [branch protection rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets) for repositories in the NixOS org.

They are not managed automatically, but can easily be imported by org owners.
To propose changes to branch protection rules, you can open a Pull Request.

After making changes to those rulesets, please export them again.
This can be done with the `./export.bash` script.
For example, to export the rulesets for the `nixpkgs` repo, call `rulesets/export.bash nixpkgs`.
While the rulesets endpoint can be read by non-owners, the export must be done by an org-owner to include the `bypass_actors` field.
