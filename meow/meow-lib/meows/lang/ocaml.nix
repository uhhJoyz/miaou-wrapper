{
  pkgs,
  lib,
  ...
}:
{
  config.vim = {
    lsp.servers.ocaml-lsp = {
      cmd = lib.mkForce [
        "opam"
        "exec"
        "--"
        "ocamllsp"
      ];
    };

    languages.ocaml.enable = true;
  };
}
