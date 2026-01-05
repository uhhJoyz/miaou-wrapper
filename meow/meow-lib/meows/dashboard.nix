{
  pkgs,
  lib,
  ...
}:
{
  config.vim.dashboard = {
    alpha = {
      enable = true;
      theme = null;
      layout = [
        {
# alternate dashboard image:
# ::::    ::::  :::   :::  ::::::::  :::       :::
# +:+:+: :+:+:+ :+:   :+: :+:    :+: :+:       :+:
# +:+ +:+:+ +:+  +:+ +:+  +:+    +:+ +:+       +:+
# +#+  +:+  +#+   +#++:   +#+    +:+ +#+  +:+  +#+
# +#+       +#+    +#+    +#+    +#+ +#+ +#+#+ +#+
# #+#       #+#    #+#    #+#    #+#  #+#+# #+#+# 
# ###       ###    ###     ########    ###   ###  
          type = "text";
          val = [
            ""
            ""
            ""
            "<-. (`-')                             .->   "
            "   \(OO )_      .->        .->    (`(`-')/`)"
            ",--./  ,-.) ,--.'  ,-.(`-')----. ,-`( OO).',"
            "|   `.'   |(`-')'.'  /( OO).-.  '|  |\  |  |"
            "|  |'.'|  |(OO \    / ( _) | |  ||  | '.|  |"
            "|  |   |  | |  /   /)  \|  |)|  ||  |.'.|  |"
            "|  |   |  | `-/   /`    '  '-'  '|   ,'.   |"
            "`--'   `--'   `--'       `-----' `--'   '--'"
            ""
            ""
            ""
          ];
          opts = {
            hl = "Title";
            position = "center";
          };
        }
        {
          type = "text";
          val = [ "Welcome back to myow, we hope you'll enjoy your stay!" ];
          opts = {
            hl = "ActionPreviewTitle";
            position = "center";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [
            "Press <space>ff to find files."
            "Press <space>fp to open previous projects."
          ];
          opts = {
            position = "center";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [ "Be sure to check out NVF, the configuration tool upon which this distribution is built." ];
          opts = {
            hl = "Comment";
            position = "center";
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [
            "If you have a little bit of extra cash, please consider pressing 'Ggx' to"
          ];
          opts = {
            hl = "AlphaFooter";
            position = "center";
          };
        }
        {
          type = "text";
          val = [ "donate to help children in Gaza." ];
          opts = {
            hl = "AlphaFooter";
            position = "center";
          };
        }
        {
          type = "text";
          val = [ "https://support.savethechildren.org/" ];
          opts = {
            hl = "AlphaShortcut";
            position = "center";
          };
        }
      ];
    };
  };
}
