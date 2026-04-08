{ _, lib, ... }:
{
  config.vim = {
    theme = {
      enable = lib.mkDefault true;
      name = lib.mkDefault "catppuccin";
      style = lib.mkDefault "mocha";
    };
  };
}
