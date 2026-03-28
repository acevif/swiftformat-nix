{
  description = "Development shell for swiftformat-nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    ignore = {
      url = "github:acevif/ignore";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.nixpkgs-unstable.follows = "nixpkgs-unstable";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        {
          pkgs,
          system,
          inputs',
          ...
        }:
        let
          unstablePkgs = import inputs.nixpkgs-unstable { inherit system; };
        in
        {
          formatter = pkgs.nixfmt;

          devShells.default = pkgs.mkShell {
            packages = [
              inputs'.ignore.packages.default
              pkgs.gh
              pkgs.nvfetcher
              unstablePkgs.prek
            ];
            shellHook = ''
              printf '%s\n' 'warning: prek hooks are not installed; run `prek install` to install them.' >&2
            '';
          };
        };
    };
}
