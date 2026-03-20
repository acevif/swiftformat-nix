{
  description = "Versioned SwiftFormat packages for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      perSystem = { pkgs, ... }:
        let
          sources = pkgs.callPackage ./_sources/generated.nix { };

          swiftformat_0_58_7 = pkgs.callPackage ./packages/swiftformat_0_58_7.nix {
            inherit sources;
          };
          swiftformat_0_60_1 = pkgs.callPackage ./packages/swiftformat_0_60_1.nix {
            inherit sources;
          };
        in
        {
          packages = {
            inherit swiftformat_0_58_7 swiftformat_0_60_1;
            swiftformat = swiftformat_0_60_1;
            swiftformat_0_60 = swiftformat_0_60_1;
            swiftformat_0_58 = swiftformat_0_58_7;
            default = swiftformat_0_60_1;
          };

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
