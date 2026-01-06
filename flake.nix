{
  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:uhhJoyz/meowvf";
  };

  outputs =
    inputs@{
      self,
      flake-parts,
      nixpkgs,
      nvf,
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      flake = {
        lib = {
          miaouCustom =
            { meows, pkgs }:
            (inputs.nvf.lib.neovimConfiguration {
              inherit pkgs;
              modules = [ ./meow/defaults.nix ] ++ builtins.map (x: ./meow/meow-lib/meows + x + ".nix") meows;
            }).neovim;
        };
      };
      perSystem =
        let
          default-meows = import ./meows.nix;
        in
        {
          config,
          self',
          inputs',
          pkgs,
          system,
          ...
        }:
        {
          packages = {
            default =
              (inputs.nvf.lib.neovimConfiguration {
                pkgs = nixpkgs.legacyPackages.${system};

                modules = [
                  ./meow/defaults.nix
                ]
                ++ builtins.map (x: ./meow/meow-lib/meows + x + ".nix") default-meows;
              }).neovim;
          };
        };
    };
}
