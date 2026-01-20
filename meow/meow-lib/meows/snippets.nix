_: {
  config.vim = {
    snippets.luasnip = {
      enable = true;
      setupOpts = {
        enable_autosnippets = true;
      };
    };

    extraLuaFiles = [
      (builtins.path {
        path = ./lua/snippets.lua;
        name = "snippets";
      })
    ];
  };
}
