with (import <nixpkgs> {});
let
  homebrew = bundlerEnv {
    name = "homebrew-deploy";
    gemdir = ./.;
  };
in
  homebrew.env
