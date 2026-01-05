_: {
  config.vim = {
    # keymaps = [
    #   {
    #     mode = "n";
    #     key = "<leader>uf";
    #     action = "<cmd>Neotree toggle<cr>";
    #     desc = "Open the file tree (file browser on the left) [neo-tree.nvim]";
    #   }
    # ];

    filetree = {
      nvimTree = {
        enable = true;
        mappings = {
          toggle = "<leader>uf";
        };
      };
    };

    utility = {
      yazi-nvim = {
        enable = true;
        mappings = {
          yaziToggle = "<leader>ub";
          openYaziDir = "<leader>uc";
        };
      };
    };
  };
}
