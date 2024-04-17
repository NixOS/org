# Teams

Various Nix teams exist to work together.
Teams generally have certain authority, responsibility and accountability over their resources.
There are currently no strict requirements from teams.

As a team you might want to have a new GitHub team, Matrix room or permissions to a repository.
Adding a team as shown below does not automatically give you that.
Instead see [the resources page](./resources.md).

## Website

The most official teams are the ones declared in the [teams section](https://nixos.org/community/#governance-teams) on the homepage. 

To add a new team to this list, open a PR on the [nixos-homepage repository](https://github.com/nixos/nixos-homepage).

## Nixpkgs

More Nixpkgs-specific teams are declared in the [`maintainers/team-list.nix` file](https://github.com/NixOS/nixpkgs/blob/master/maintainers/team-list.nix), which can be programmatically accessed using `lib.teams`.

To add a new team to this list, open a PR to change it.
