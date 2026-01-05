{pkgs, lib, ...} : {
  config.vim = {
    utility.freeze = {
      enable = true;
      setupOpts = {
        freeze_path = lib.getExe pkgs.charm-freeze;
        copy = true;
        freeze_config = {
          output = "ss.png";
          config = "base";
          theme = "catppuccin-mocha";
        };
      };
    };
  };
}
