let
  sources = import ./npins;
in
{
  system ? builtins.currentSystem,
  nixpkgs ? sources.nixpkgs,
}:
let
  pkgs = import nixpkgs {
    inherit system;
    config = { };
    overlays = [ ];
  };
  inherit (pkgs) lib;

  packages = {
    codeowners-validator = pkgs.buildGoModule {
      name = "codeowners-validator";
      src = sources.codeowners-validator;
      vendorHash = "sha256-R+pW3xcfpkTRqfS2ETVOwG8PZr0iH5ewroiF7u8hcYI=";
      postPatch = "rm -r docs/investigation";
    };
  };
  
in
{
  inherit packages;

  shell = pkgs.mkShell {
    packages = [
      pkgs.npins
    ];
  };
}
