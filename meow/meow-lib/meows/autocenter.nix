_: {
  config.vim.extraLuaFiles = [
      (builtins.path {
        path = ./lua/autocenter.lua;
        name = "autocenter";
      })
  ];
}
