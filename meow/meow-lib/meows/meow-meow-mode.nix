{pkgs, lib, ...}: {
  config.vim = {
    autocomplete.blink-cmp.enable = lib.mkForce false;

    keymaps = [
      {
        mode = "n";
        key = "gm";
        action = "<cmd>!open \"https://www.youtube.com/watch?v=su6_bKJJk74\"<cr>";
        desc = "Certifiable meow moment.";
        silent = true;
      }
      {
        mode = "n";
        key = "j";
        action = "gj";
        desc = "Easier line navigation for meow-meows.";
        silent = true;
      }
      {
        mode = "n";
        key = "k";
        action = "gk";
        desc = "Easier line navigation for meow-meows.";
        silent = true;
      }
    ];

    extraLuaFiles = [
      (builtins.path {
        path = ./lua/meow-meow-mode.lua;
        name = "snippets";
      })
    ];
  };
}
