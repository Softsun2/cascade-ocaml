{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  pname = "cascade";
  version = "0.1.0";

  src = ./.;

  buildInputs = with pkgs; [ make ];

  buildPhase = "make";

  installPhase = ''
    mkdir -p $out/bin
    cp cascade $out/bin/
  '';
}
