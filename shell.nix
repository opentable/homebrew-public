with (import /home/judson/dev/nixpkgs {});
(bundlerEnv {
  pname = "octokit";
  gemdir = ./.;
}).env
