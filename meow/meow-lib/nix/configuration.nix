{
  pkgs,
  lib,
  ...
}:
let
  inherit (lib.nvim.dag) entryAnywhere;
  inherit (lib.strings) optionalString;
in
{
  config.vim = {
    snippets.luasnip.loaders =
      "require('luasnip.loaders.from_vscode').lazy_load()"
      + "\n"
      + "require('luasnip.loaders.from_snipmate').lazy_load()"
      + "\n"
      + "require('luasnip.loaders.from_lua').lazy_load()";
  };
}
