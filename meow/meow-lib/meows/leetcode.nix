_: {
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>ul";
        action = "<cmd>Leet<cr>";
        desc = "Open Leetcode inside of nvim [Leetcode.nvim]";
      }
    ];
    utility.leetcode-nvim.enable = true;
  };
}
