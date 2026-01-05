{ _, lib, ... }:
{
  config.vim = {
    keymaps = [
      {
        mode = "n";
        key = "<leader>hw";
        action = "<cmd>WhichKey<cr>";
        desc = "Open the keymap exploration guide [WhichKey]";
      }
      {
        mode = "n";
        key = "<leader>hs";
        action = "<cmd>Cheatsheet<cr>";
        desc = "Open the cheatsheet [Cheatsheet]";
      }
      {
        mode = "n";
        key = "<leader>hk";
        action = "<cmd>Telescope keymaps<cr>";
        desc = "Search for keymaps [Telescope]";
      }
    ];

    telescope.mappings.findKeys = lib.mkForce "<leader>hk";

    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };
  };
}
