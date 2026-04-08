{
  _,
  lib,
  ...
}: {
  config.vim = {
    theme = {
      enable = true;
      name = "oxocarbon";
      style = "dark";
      transparent = lib.mkForce false;
    };
  };
}
