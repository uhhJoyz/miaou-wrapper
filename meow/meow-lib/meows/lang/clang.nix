{
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
    languages.clang.enable = true;
  };
}
