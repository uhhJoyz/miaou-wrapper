_: {
  config.vim = {
    treesitter.enable = true;
    treesitter.context = {
      enable = false;
      setupOpts = {
        max_lines = 1;
        separator = null;
      };
    };

    tabline = {
      nvimBufferline = {
        enable = true;
        setupOpts = {
          options = {
            # separator_style = "thin";
            numbers = "none";
            show_tab_indicators = true;
            indicator = {
              style = "underline";
            };
          };
        };
        mappings = {
          cycleNext = "<tab>";
          cyclePrevious = "<S-tab>";
          pick = "<leader>bp";
          closeCurrent = "<leader>bd";
        };
      };
    };

    visuals = {
      nvim-scrollbar.enable = true;
      nvim-web-devicons.enable = true;
      fidget-nvim.enable = true;

      nvim-cursorline = {
        enable = true;
        setupOpts = {
          cursorline = {
            enable = true;
            timeout = 500;
            number = false;
          };
          cursorword = {
            enable = true;
            min_length = 3;
            hl = {
              underline = false;
              bold = true;
            };
          };
        };
      };
      cinnamon-nvim.enable = true;
      highlight-undo.enable = true;
      indent-blankline.enable = true;
    };

    statusline = {
      lualine = {
        enable = true;
        theme = "catppuccin";
      };
    };

    utility.nvim-biscuits.enable = true;

    notes.todo-comments.enable = true;

    ui = {
      borders.enable = true;
      colorizer.enable = true;
      illuminate.enable = true;
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          nix = "110";
          ruby = "120";
          java = "130";
          go = [
            "90"
            "130"
          ];
        };
      };
      breadcrumbs = {
        enable = true;
      };
      fastaction.enable = true;
    };
  };
}
