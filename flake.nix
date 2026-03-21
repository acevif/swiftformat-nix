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
          # 0.48.1-0.55.5: no aarch64-linux binary available
          // lib.optionalAttrs (system != "aarch64-linux") {
            swiftformat_0_48_1 = mkSwiftformat "0_48_1";
            swiftformat_0_48_2 = mkSwiftformat "0_48_2";
            swiftformat_0_48_3 = mkSwiftformat "0_48_3";
            swiftformat_0_48_4 = mkSwiftformat "0_48_4";
            swiftformat_0_48_5 = mkSwiftformat "0_48_5";
            swiftformat_0_48_6 = mkSwiftformat "0_48_6";
            swiftformat_0_48_7 = mkSwiftformat "0_48_7";
            swiftformat_0_48_8 = mkSwiftformat "0_48_8";
            swiftformat_0_48_9 = mkSwiftformat "0_48_9";
            swiftformat_0_48_10 = mkSwiftformat "0_48_10";
            swiftformat_0_48_11 = mkSwiftformat "0_48_11";
            swiftformat_0_48_12 = mkSwiftformat "0_48_12";
            swiftformat_0_48_13 = mkSwiftformat "0_48_13";
            swiftformat_0_48_14 = mkSwiftformat "0_48_14";
            swiftformat_0_48_15 = mkSwiftformat "0_48_15";
            swiftformat_0_48_16 = mkSwiftformat "0_48_16";
            swiftformat_0_48_17 = mkSwiftformat "0_48_17";
            swiftformat_0_48_18 = mkSwiftformat "0_48_18";
            swiftformat_0_49_0 = mkSwiftformat "0_49_0";
            swiftformat_0_49_1 = mkSwiftformat "0_49_1";
            swiftformat_0_49_2 = mkSwiftformat "0_49_2";
            swiftformat_0_49_3 = mkSwiftformat "0_49_3";
            swiftformat_0_49_4 = mkSwiftformat "0_49_4";
            swiftformat_0_49_5 = mkSwiftformat "0_49_5";
            swiftformat_0_49_6 = mkSwiftformat "0_49_6";
            swiftformat_0_49_7 = mkSwiftformat "0_49_7";
            swiftformat_0_49_8 = mkSwiftformat "0_49_8";
            swiftformat_0_49_9 = mkSwiftformat "0_49_9";
            swiftformat_0_49_10 = mkSwiftformat "0_49_10";
            swiftformat_0_49_11 = mkSwiftformat "0_49_11";
            swiftformat_0_49_12 = mkSwiftformat "0_49_12";
            swiftformat_0_49_13 = mkSwiftformat "0_49_13";
            swiftformat_0_49_14 = mkSwiftformat "0_49_14";
            swiftformat_0_49_15 = mkSwiftformat "0_49_15";
            swiftformat_0_49_16 = mkSwiftformat "0_49_16";
            swiftformat_0_49_17 = mkSwiftformat "0_49_17";
            swiftformat_0_49_18 = mkSwiftformat "0_49_18";
            swiftformat_0_50_0 = mkSwiftformat "0_50_0";
            swiftformat_0_50_1 = mkSwiftformat "0_50_1";
            swiftformat_0_50_2 = mkSwiftformat "0_50_2";
            swiftformat_0_50_3 = mkSwiftformat "0_50_3";
            swiftformat_0_50_4 = mkSwiftformat "0_50_4";
            swiftformat_0_50_5 = mkSwiftformat "0_50_5";
            swiftformat_0_50_6 = mkSwiftformat "0_50_6";
            swiftformat_0_50_7 = mkSwiftformat "0_50_7";
            swiftformat_0_50_8 = mkSwiftformat "0_50_8";
            swiftformat_0_50_9 = mkSwiftformat "0_50_9";
            swiftformat_0_51_0 = mkSwiftformat "0_51_0";
            swiftformat_0_51_1 = mkSwiftformat "0_51_1";
            swiftformat_0_51_2 = mkSwiftformat "0_51_2";
            swiftformat_0_51_3 = mkSwiftformat "0_51_3";
            swiftformat_0_51_4 = mkSwiftformat "0_51_4";
            swiftformat_0_51_5 = mkSwiftformat "0_51_5";
            swiftformat_0_51_6 = mkSwiftformat "0_51_6";
            swiftformat_0_51_7 = mkSwiftformat "0_51_7";
            swiftformat_0_51_8 = mkSwiftformat "0_51_8";
            swiftformat_0_51_9 = mkSwiftformat "0_51_9";
            swiftformat_0_51_10 = mkSwiftformat "0_51_10";
            swiftformat_0_51_11 = mkSwiftformat "0_51_11";
            swiftformat_0_51_12 = mkSwiftformat "0_51_12";
            swiftformat_0_51_13 = mkSwiftformat "0_51_13";
            swiftformat_0_51_15 = mkSwiftformat "0_51_15";
            swiftformat_0_52_0 = mkSwiftformat "0_52_0";
            swiftformat_0_52_1 = mkSwiftformat "0_52_1";
            swiftformat_0_52_2 = mkSwiftformat "0_52_2";
            swiftformat_0_52_3 = mkSwiftformat "0_52_3";
            swiftformat_0_52_4 = mkSwiftformat "0_52_4";
            swiftformat_0_52_5 = mkSwiftformat "0_52_5";
            swiftformat_0_52_6 = mkSwiftformat "0_52_6";
            swiftformat_0_52_7 = mkSwiftformat "0_52_7";
            swiftformat_0_52_8 = mkSwiftformat "0_52_8";
            swiftformat_0_52_10 = mkSwiftformat "0_52_10";
            swiftformat_0_52_11 = mkSwiftformat "0_52_11";
            swiftformat_0_53_0 = mkSwiftformat "0_53_0";
            swiftformat_0_53_1 = mkSwiftformat "0_53_1";
            swiftformat_0_53_2 = mkSwiftformat "0_53_2";
            swiftformat_0_53_3 = mkSwiftformat "0_53_3";
            swiftformat_0_53_4 = mkSwiftformat "0_53_4";
            swiftformat_0_53_5 = mkSwiftformat "0_53_5";
            swiftformat_0_53_6 = mkSwiftformat "0_53_6";
            swiftformat_0_53_7 = mkSwiftformat "0_53_7";
            swiftformat_0_53_8 = mkSwiftformat "0_53_8";
            swiftformat_0_53_9 = mkSwiftformat "0_53_9";
            swiftformat_0_53_10 = mkSwiftformat "0_53_10";
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
            # aliases (no aarch64-linux)
            swiftformat_0_48 = self'.packages.swiftformat_0_48_18;
            swiftformat_0_49 = self'.packages.swiftformat_0_49_18;
            swiftformat_0_50 = self'.packages.swiftformat_0_50_9;
            swiftformat_0_51 = self'.packages.swiftformat_0_51_15;
            swiftformat_0_52 = self'.packages.swiftformat_0_52_11;
            swiftformat_0_53 = self'.packages.swiftformat_0_53_10;
            swiftformat_0_54 = self'.packages.swiftformat_0_54_6;
          }
          # 0.47.4-0.48.0: darwin only, no linux binary available
          // lib.optionalAttrs (lib.hasSuffix "-darwin" system) {
            swiftformat_0_47_4 = mkSwiftformat "0_47_4";
            swiftformat_0_47_5 = mkSwiftformat "0_47_5";
            swiftformat_0_47_6 = mkSwiftformat "0_47_6";
            swiftformat_0_47_7 = mkSwiftformat "0_47_7";
            swiftformat_0_47_8 = mkSwiftformat "0_47_8";
            swiftformat_0_47_9 = mkSwiftformat "0_47_9";
            swiftformat_0_47_10 = mkSwiftformat "0_47_10";
            swiftformat_0_47_11 = mkSwiftformat "0_47_11";
            swiftformat_0_47_12 = mkSwiftformat "0_47_12";
            swiftformat_0_47_13 = mkSwiftformat "0_47_13";
            swiftformat_0_48_0 = mkSwiftformat "0_48_0";
            swiftformat_0_52_9 = mkSwiftformat "0_52_9";
            # aliases (darwin only)
            swiftformat_0_47 = self'.packages.swiftformat_0_47_13;
          };

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
