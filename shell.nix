with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "cascade-env";
  buildInputs = [
    dune_3

    ocaml
    ocamlPackages.findlib
    ocamlPackages.ppx_inline_test

    ocamlPackages.ocaml-lsp
    ocamlPackages.utop
  ];
}
