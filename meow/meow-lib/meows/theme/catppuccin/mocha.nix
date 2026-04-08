{ _, lib, ... }:
{
  config.vim = {
    theme = {
      enable = true;
      name = lib.mkDefault "catppuccin";
      style = lib.mkDefault "mocha";
    };
  };
}
