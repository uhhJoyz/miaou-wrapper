{ _, lib, ... }:
{
  config.vim = {
    theme.transparent = true;
    visuals.nvim-cursorline.setupOpts.cursorline.enable = lib.mkForce false;
  };
}
