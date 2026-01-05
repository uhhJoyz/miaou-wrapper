{
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
    languages.json.enable = true;
    languages.css.enable = true;
    languages.html.enable = true;
    languages.ts.enable = true;
    languages.sql.enable = true;
  };
}
