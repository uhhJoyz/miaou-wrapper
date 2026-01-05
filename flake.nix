{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:uhhJoyz/meowvf";
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      sys = import ./sys.nix;
      m = import ./meows.nix;
    in
    {
      miaou_config =
        { system, meows }:
        (inputs.nvf.lib.neovimConfiguration {
          pkgs = nixpkgs.legacyPackages.${system};

          modules = [ ./meow/defaults.nix ] ++ builtins.map (x: ./meow/meow-lib/meows + x + ".nix") meows;
        });
      packages.${sys} = {
        pkgs = nixpkgs.legacyPackages.${sys};
        default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = nixpkgs.legacyPackages.${sys};

            modules = [ ./meow/defaults.nix ] ++ builtins.map (x: ./meow/meow-lib/meows + x + ".nix") m;
          }).neovim;
      };
    };
}
