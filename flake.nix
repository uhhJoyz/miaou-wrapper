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
      system,
      meows,
      ...
    }@inputs:
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
