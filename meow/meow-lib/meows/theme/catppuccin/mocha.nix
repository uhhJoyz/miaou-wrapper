{ _, lib, ... }:
{
  config.vim = {
    theme = {
      enable = lib.mkForce true;
      name = lib.mkDefault "catppuccin";
      style = lib.mkDefault "mocha";
    };
  };
}
