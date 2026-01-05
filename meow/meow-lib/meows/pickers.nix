_: {
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>upr";
        action = "<cmd>CccConvert<cr>";
        desc = "Color picker convert (hsl <-> rgb) [ccc.nvim]";
      }
      {
        mode = "n";
        key = "<leader>upc";
        action = "<cmd>CccPick<cr>";
        desc = "Open color picker [ccc.nvim]";
      }
      {
        mode = "n";
        key = "<leader>upi";
        action = "<cmd>IconPickerNormal<cr>";
        desc = "Open icon picker [icon-picker.nvim]";
      }
    ];
    utility = {
      icon-picker.enable = true;
      ccc.enable = true;
    };
  };
}
