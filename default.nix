# Simple Nix shell derivation for a basic development environment using Node
# and yarn.
# (see https://nixos.org/nix/)

with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "env";
    buildInputs = [
        nodejs-10_x (yarn.override { nodejs = nodejs-10_x; }) jq python2
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}
