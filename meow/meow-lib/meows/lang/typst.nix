_: {
  config.vim = {
# add_key({ "<leader>tyc", "<Cmd>TypstCompile<CR>", desc = "stop following cursor in typst preview", silent = true })

    keymaps = [
      {
        mode = "n";
        key = "<leader>tyc";
        action = "<cmd>TypstCompile<cr>";
        desc = "Compile the currently open Typst file.";
      }
      {
        mode = "n";
        key = "<leader>typ";
        action = "<cmd>TypstPreviewToggle<cr>";
        desc = "Toggle Typst preview of current Typst file. [typst-preview]";
      }
      {
        mode = "n";
        key = "<leader>tyu";
        action = "<cmd>TypstPreviewUpdate<cr>";
        desc = "Force an update on the currently active Typst Preview. [typst-preview]";
      }
    ];

    extraLuaFiles = [
      (builtins.path {
        path = ../lua/typst-compile.lua;
        name = "typst-compile";
      })
    ];

    languages.typst.enable = true;
  };
}
