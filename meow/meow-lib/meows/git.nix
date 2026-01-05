_: {
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>gd";
        action = "<cmd>DiffviewOpen<cr>";
        desc = "Open a git diff viewer [diffview.nvim]";
      }
    ];
    utility.diffview-nvim.enable = true;
    git = {
      enable = true;
      gitsigns.enable = true;
      gitsigns.codeActions.enable = false;
      neogit.enable = true;
    };
  };
}
