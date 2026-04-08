{ _, lib, ... }:
{
  config.vim = {
    theme = {
      enable = true;
      name = lib.mkForce "catppuccin";
      style = lib.mkForce "mocha";
    };
  };
}
