_: {
  config.vim = {
    keymaps = [
      {
        mode = ["n" "v"];
        key = "gh";
        action = "0";
        desc = "go all the way left";
      }
      {
        mode = ["n" "v"];
        key = "gl";
        action = "$";
        desc = "go all the way right ($)";
      }
      {
        mode = ["n" "v"];
        key = "gs";
        action = "^";
        desc = "go to first non-whitespace character (^)";
      }
      {
        mode = ["n" "v"];
        key = "gm";
        action = "m";
        desc = "make mark (usually just m)";
      }
      {
        mode = ["n" "v"];
        key = "mm";
        action = "%";
        desc = "go matching parenthesis (%)";
      }
    ];
  };
}
