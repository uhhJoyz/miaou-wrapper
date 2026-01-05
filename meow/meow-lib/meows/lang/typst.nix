_: {
  config.vim = {
    keymaps = [
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
    languages.typst.enable = true;
  };
}
