_: {
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>wov";
        action = "<cmd>vnew<cr>";
        desc = "Open new window vertically.";
      }
      {
        mode = "n";
        key = "<leader>woh";
        action = "<cmd>new<cr>";
        desc = "Open new window horizontally.";
      }
      {
        mode = "n";
        key = "<leader>wd";
        action = "<cmd>close<cr>";
        desc = "Close the current window.";
      }
      {
        mode = "n";
        key = "<leader>wc";
        action = "<cmd>only<cr>";
        desc = "Close all other windows (excluding the active one).";
      }
    ];
    utility.smart-splits.enable = true;
  };
}
