{
  description = "Versioned SwiftFormat packages for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      perSystem = { pkgs, self', ... }:
        let
          sources = pkgs.callPackage ./_sources/generated.nix { };
          mkSwiftformat = versionId: pkgs.callPackage ./packages/mkSwiftformat.nix {
            inherit sources versionId;
          };
        in
        {
          packages = {
            swiftformat_0_57_2 = mkSwiftformat "0_57_2";
            swiftformat_0_58_0 = mkSwiftformat "0_58_0";
            swiftformat_0_58_1 = mkSwiftformat "0_58_1";
            swiftformat_0_58_2 = mkSwiftformat "0_58_2";
            swiftformat_0_58_3 = mkSwiftformat "0_58_3";
            swiftformat_0_58_4 = mkSwiftformat "0_58_4";
            swiftformat_0_58_5 = mkSwiftformat "0_58_5";
            swiftformat_0_58_6 = mkSwiftformat "0_58_6";
            swiftformat_0_58_7 = mkSwiftformat "0_58_7";
            swiftformat_0_59_0 = mkSwiftformat "0_59_0";
            swiftformat_0_59_1 = mkSwiftformat "0_59_1";
            swiftformat_0_60_0 = mkSwiftformat "0_60_0";
            swiftformat_0_60_1 = mkSwiftformat "0_60_1";
            # aliases
            swiftformat_0_58 = self'.packages.swiftformat_0_58_7;
            swiftformat_0_59 = self'.packages.swiftformat_0_59_1;
            swiftformat_0_60 = self'.packages.swiftformat_0_60_1;
            swiftformat = self'.packages.swiftformat_0_60_1;
            default = self'.packages.swiftformat_0_60_1;
          };

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
