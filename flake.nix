{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "./meowvf";
  };

  outputs =
    {
      self,
      nixpkgs,
      nvf,
      ...
    }@inputs:
    let
      system = import ./sys.nix;
      meows = import ./meows.nix;
    in
    {
      packages.${system} = {
        pkgs = nixpkgs.legacyPackages.${system};
        default =
          (inputs.nvf.lib.neovimConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};

            modules = [ ./meow/defaults.nix ] ++ builtins.map (x: ./meow/meow-lib/meows + x + ".nix") meows;
          }).neovim;
      };
    };
}
