{
  description = "Versioned SwiftFormat packages for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, nixpkgs, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      perSystem = { pkgs, self', system, ... }:
        let
          lib = nixpkgs.lib;
          sources = pkgs.callPackage ./_sources/generated.nix { };
          mkSwiftformat = versionId: pkgs.callPackage ./packages/mkSwiftformat.nix {
            inherit sources versionId;
          };
        in
        {
          packages = {
            # 0.55.6+ supports aarch64-linux
            swiftformat_0_55_6 = mkSwiftformat "0_55_6";
            swiftformat_0_56_0 = mkSwiftformat "0_56_0";
            swiftformat_0_56_1 = mkSwiftformat "0_56_1";
            swiftformat_0_56_2 = mkSwiftformat "0_56_2";
            swiftformat_0_56_3 = mkSwiftformat "0_56_3";
            swiftformat_0_56_4 = mkSwiftformat "0_56_4";
            swiftformat_0_57_0 = mkSwiftformat "0_57_0";
            swiftformat_0_57_1 = mkSwiftformat "0_57_1";
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
            # aliases (aarch64-linux-capable versions)
            swiftformat_0_55 = self'.packages.swiftformat_0_55_6;
            swiftformat_0_56 = self'.packages.swiftformat_0_56_4;
            swiftformat_0_57 = self'.packages.swiftformat_0_57_2;
            swiftformat_0_58 = self'.packages.swiftformat_0_58_7;
            swiftformat_0_59 = self'.packages.swiftformat_0_59_1;
            swiftformat_0_60 = self'.packages.swiftformat_0_60_1;
            swiftformat = self'.packages.swiftformat_0_60_1;
            default = self'.packages.swiftformat_0_60_1;
          }
          # 0.54.0-0.55.5: no aarch64-linux binary available
          // lib.optionalAttrs (system != "aarch64-linux") {
            swiftformat_0_54_0 = mkSwiftformat "0_54_0";
            swiftformat_0_54_1 = mkSwiftformat "0_54_1";
            swiftformat_0_54_2 = mkSwiftformat "0_54_2";
            swiftformat_0_54_3 = mkSwiftformat "0_54_3";
            swiftformat_0_54_4 = mkSwiftformat "0_54_4";
            swiftformat_0_54_5 = mkSwiftformat "0_54_5";
            swiftformat_0_54_6 = mkSwiftformat "0_54_6";
            swiftformat_0_55_0 = mkSwiftformat "0_55_0";
            swiftformat_0_55_1 = mkSwiftformat "0_55_1";
            swiftformat_0_55_2 = mkSwiftformat "0_55_2";
            swiftformat_0_55_3 = mkSwiftformat "0_55_3";
            swiftformat_0_55_4 = mkSwiftformat "0_55_4";
            swiftformat_0_55_5 = mkSwiftformat "0_55_5";
            # alias (points to 0.54.6 which lacks aarch64-linux)
            swiftformat_0_54 = self'.packages.swiftformat_0_54_6;
          };

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
