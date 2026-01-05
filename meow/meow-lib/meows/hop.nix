_: {
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "s";
        action = "<cmd>HopChar2<cr>";
        desc = "Hop to a set of two characters [hop.nvim]";
      }
    ];
    utility.motion.hop = {
      enable = true;
      mappings = {
        hop = "S";
      };
    };
  };
}
