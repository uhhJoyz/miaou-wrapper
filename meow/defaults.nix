{
  pkgs,
  lib,
  ...
}: {
  config.vim = {
    lsp = {
      enable = true;
      formatOnSave = false;
    };

    lazy.plugins."snacks.nvim" = {
      package = pkgs.vimPlugins.snacks-nvim;
      lazy = false;
      cmd = ["VimEnter"];
      setupOpts = {
        profiler = {};
      };
      keys = [
        {
          mode = "n";
          key = "<leader>pp";
          action = "<cmd>lua require('snacks').profiler.toggle()<cr>";
          desc = "toggle profiler (opens details on stop)";
        }
      ];
    };

    languages = {
      enableFormat = true;
      enableTreesitter = true;
      nix.enable = true;

      # TODO: pick up building meows from here
      astro.enable = false;
      nu.enable = false;
      csharp.enable = false;
      julia.enable = false;
      vala.enable = false;
      scala.enable = false;
      r.enable = false;
      gleam.enable = false;
      dart.enable = false;
      elixir.enable = false;
      haskell.enable = true;
      hcl.enable = false;
      ruby.enable = false;
      fsharp.enable = false;
      just.enable = false;
      qml.enable = false;
      tailwind.enable = false;
      svelte.enable = false;
    };

    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };

    projects.project-nvim.enable = true;

    utility = {
      surround = {
        enable = true;
        setupOpts = {
          keymaps = {
            visual = "s";
            visual_line = "S";
            normal = "ys";
            delete = "ds";
            change = "cs";
          };
        };
      };
      undotree.enable = true;
      lean.enable = true;
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>ut";
        action = "<cmd>UndotreeToggle<cr>";
        desc = "Toggles the undo tree.";
      }
      {
        mode = "n";
        key = "<esc>";
        action = "<cmd>noh<cr>";
      }
      {
        mode = "i";
        key = "<c-m>";
        action = "meow ";
        desc = "meow, but super fast";
      }
    ];

    lazy.plugins = {
      # FIXME: the command doesn't load here for some reason
      # "vimplugin-yop.nvim" = {
      #   package = pkgs.vimUtils.buildVimPlugin {
      #     name = "yop.nvim";
      #     src = pkgs.fetchFromGitHub {
      #       owner = "zdcthomas";
      #       repo = "yop.nvim";
      #       rev = "ec26d86cfa96783f6894babcc509e5287aef9a25";
      #       sha256 = "sha256-DMsrHINiW4Ga3K7JuG3s84KJl2ufkLtRJrM8C1NmbHM=";
      #     };
      #   };
      #   lazy = false;
      #   after = "print('loaded yop')";
      #   event = [ "VimEnter" ];
      # };
      # FIXME: eyeliner has visual issues
      # "eyeliner.nvim" = {
      #   package = pkgs.vimPlugins.eyeliner-nvim;
      #   lazy = true;
      #   event = [ "BufEnter" ];
      #   setupOpts = {
      #     highlight_on_key = true;
      #   };
      # };
    };

    options = ./meow-lib/nix/vim-settings.nix;
  };
}
