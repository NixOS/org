# Governance

The [Nix Community Values](./values.md) and the [Nix Governance Constitution](./constitution.md) are important documents tracked in this repository.
The latter describes Steering Committee (SC) and the NixOS Foundation Board.
The [first election](https://github.com/nixos/SC-election-2024) ran in 2024.

The current SC consists of these members:
- [@Ericson2314](https://github.com/Ericson2314) (term ends 2026)
- [@fpletz](https://github.com/fpletz) (term ends 2025)
- [@Gabriella439](https://github.com/Gabriella439) (term ends 2026)
- [@jtojnar](https://github.com/jtojnar) (term ends 2026)
- [@roberth](https://github.com/roberth) (term ends 2026)
- [@tomberek](https://github.com/tomberek) (term ends 2025)
- [@winterqt](https://github.com/winterqt) (term ends 2025)

## RFC Process

The Nix RFC (Request For Comments) process exists to establish wider consensus for substantial changes. See the [rfcs repository](https://github.com/NixOS/rfcs) for more information.

## Teams

Various Nix teams exist to work together.
Teams generally have certain authority, responsibility and accountability over their resources.
There are currently no strict requirements from teams.

As a team you might want to have a new GitHub team, Matrix room or permissions to a repository.
Adding a team as shown below does not automatically give you that.
Instead see [the resources page](./resources.md).

### Website

The most official teams are the ones declared in the [teams section](https://nixos.org/community/#governance-teams) on the homepage.

To add a new team to this list, open a PR on the [nixos-homepage repository](https://github.com/nixos/nixos-homepage).

### Nixpkgs

More Nixpkgs-specific teams are declared in the [`maintainers/team-list.nix` file](https://github.com/NixOS/nixpkgs/blob/master/maintainers/team-list.nix), which can be programmatically accessed using `lib.teams`.

To add a new team to this list, open a PR to change it.
