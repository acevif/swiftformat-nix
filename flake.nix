{
  description = "Versioned SwiftFormat packages for Nix";

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
          mkSwiftformat = args: pkgs.callPackage ./packages/mkSwiftformat.nix args;
          versioned = {
            swiftformat_0_47_4 = mkSwiftformat {
              versionId = "0_47_4";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_5 = mkSwiftformat {
              versionId = "0_47_5";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_6 = mkSwiftformat {
              versionId = "0_47_6";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_7 = mkSwiftformat {
              versionId = "0_47_7";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_8 = mkSwiftformat {
              versionId = "0_47_8";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_9 = mkSwiftformat {
              versionId = "0_47_9";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_10 = mkSwiftformat {
              versionId = "0_47_10";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_11 = mkSwiftformat {
              versionId = "0_47_11";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_12 = mkSwiftformat {
              versionId = "0_47_12";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_47_13 = mkSwiftformat {
              versionId = "0_47_13";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_0 = mkSwiftformat {
              versionId = "0_48_0";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_1 = mkSwiftformat {
              versionId = "0_48_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_2 = mkSwiftformat {
              versionId = "0_48_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_3 = mkSwiftformat {
              versionId = "0_48_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_4 = mkSwiftformat {
              versionId = "0_48_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_5 = mkSwiftformat {
              versionId = "0_48_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_6 = mkSwiftformat {
              versionId = "0_48_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_7 = mkSwiftformat {
              versionId = "0_48_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_8 = mkSwiftformat {
              versionId = "0_48_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_9 = mkSwiftformat {
              versionId = "0_48_9";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_10 = mkSwiftformat {
              versionId = "0_48_10";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_11 = mkSwiftformat {
              versionId = "0_48_11";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_12 = mkSwiftformat {
              versionId = "0_48_12";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_13 = mkSwiftformat {
              versionId = "0_48_13";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_14 = mkSwiftformat {
              versionId = "0_48_14";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_15 = mkSwiftformat {
              versionId = "0_48_15";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_16 = mkSwiftformat {
              versionId = "0_48_16";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_17 = mkSwiftformat {
              versionId = "0_48_17";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_48_18 = mkSwiftformat {
              versionId = "0_48_18";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_0 = mkSwiftformat {
              versionId = "0_49_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_1 = mkSwiftformat {
              versionId = "0_49_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_2 = mkSwiftformat {
              versionId = "0_49_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_3 = mkSwiftformat {
              versionId = "0_49_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_4 = mkSwiftformat {
              versionId = "0_49_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_5 = mkSwiftformat {
              versionId = "0_49_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_6 = mkSwiftformat {
              versionId = "0_49_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_7 = mkSwiftformat {
              versionId = "0_49_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_8 = mkSwiftformat {
              versionId = "0_49_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_9 = mkSwiftformat {
              versionId = "0_49_9";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_10 = mkSwiftformat {
              versionId = "0_49_10";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_11 = mkSwiftformat {
              versionId = "0_49_11";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_12 = mkSwiftformat {
              versionId = "0_49_12";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_13 = mkSwiftformat {
              versionId = "0_49_13";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_14 = mkSwiftformat {
              versionId = "0_49_14";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_15 = mkSwiftformat {
              versionId = "0_49_15";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_16 = mkSwiftformat {
              versionId = "0_49_16";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_17 = mkSwiftformat {
              versionId = "0_49_17";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_49_18 = mkSwiftformat {
              versionId = "0_49_18";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_0 = mkSwiftformat {
              versionId = "0_50_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_1 = mkSwiftformat {
              versionId = "0_50_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_2 = mkSwiftformat {
              versionId = "0_50_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_3 = mkSwiftformat {
              versionId = "0_50_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_4 = mkSwiftformat {
              versionId = "0_50_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_5 = mkSwiftformat {
              versionId = "0_50_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_6 = mkSwiftformat {
              versionId = "0_50_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_7 = mkSwiftformat {
              versionId = "0_50_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_8 = mkSwiftformat {
              versionId = "0_50_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_50_9 = mkSwiftformat {
              versionId = "0_50_9";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_0 = mkSwiftformat {
              versionId = "0_51_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_1 = mkSwiftformat {
              versionId = "0_51_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_2 = mkSwiftformat {
              versionId = "0_51_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_3 = mkSwiftformat {
              versionId = "0_51_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_4 = mkSwiftformat {
              versionId = "0_51_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_5 = mkSwiftformat {
              versionId = "0_51_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_6 = mkSwiftformat {
              versionId = "0_51_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_7 = mkSwiftformat {
              versionId = "0_51_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_8 = mkSwiftformat {
              versionId = "0_51_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_9 = mkSwiftformat {
              versionId = "0_51_9";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_10 = mkSwiftformat {
              versionId = "0_51_10";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_11 = mkSwiftformat {
              versionId = "0_51_11";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_12 = mkSwiftformat {
              versionId = "0_51_12";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_13 = mkSwiftformat {
              versionId = "0_51_13";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_51_15 = mkSwiftformat {
              versionId = "0_51_15";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_0 = mkSwiftformat {
              versionId = "0_52_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_1 = mkSwiftformat {
              versionId = "0_52_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_2 = mkSwiftformat {
              versionId = "0_52_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_3 = mkSwiftformat {
              versionId = "0_52_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_4 = mkSwiftformat {
              versionId = "0_52_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_5 = mkSwiftformat {
              versionId = "0_52_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_6 = mkSwiftformat {
              versionId = "0_52_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_7 = mkSwiftformat {
              versionId = "0_52_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_8 = mkSwiftformat {
              versionId = "0_52_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_9 = mkSwiftformat {
              versionId = "0_52_9";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_10 = mkSwiftformat {
              versionId = "0_52_10";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_52_11 = mkSwiftformat {
              versionId = "0_52_11";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_0 = mkSwiftformat {
              versionId = "0_53_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_1 = mkSwiftformat {
              versionId = "0_53_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_2 = mkSwiftformat {
              versionId = "0_53_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_3 = mkSwiftformat {
              versionId = "0_53_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_4 = mkSwiftformat {
              versionId = "0_53_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_5 = mkSwiftformat {
              versionId = "0_53_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_6 = mkSwiftformat {
              versionId = "0_53_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_7 = mkSwiftformat {
              versionId = "0_53_7";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_8 = mkSwiftformat {
              versionId = "0_53_8";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_9 = mkSwiftformat {
              versionId = "0_53_9";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_53_10 = mkSwiftformat {
              versionId = "0_53_10";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_0 = mkSwiftformat {
              versionId = "0_54_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_1 = mkSwiftformat {
              versionId = "0_54_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_2 = mkSwiftformat {
              versionId = "0_54_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_3 = mkSwiftformat {
              versionId = "0_54_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_4 = mkSwiftformat {
              versionId = "0_54_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_5 = mkSwiftformat {
              versionId = "0_54_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_54_6 = mkSwiftformat {
              versionId = "0_54_6";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_0 = mkSwiftformat {
              versionId = "0_55_0";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_1 = mkSwiftformat {
              versionId = "0_55_1";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_2 = mkSwiftformat {
              versionId = "0_55_2";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_3 = mkSwiftformat {
              versionId = "0_55_3";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_4 = mkSwiftformat {
              versionId = "0_55_4";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_5 = mkSwiftformat {
              versionId = "0_55_5";
              platforms = [
                "x86_64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_55_6 = mkSwiftformat {
              versionId = "0_55_6";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_56_0 = mkSwiftformat {
              versionId = "0_56_0";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_56_1 = mkSwiftformat {
              versionId = "0_56_1";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_56_2 = mkSwiftformat {
              versionId = "0_56_2";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_56_3 = mkSwiftformat {
              versionId = "0_56_3";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_56_4 = mkSwiftformat {
              versionId = "0_56_4";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_57_0 = mkSwiftformat {
              versionId = "0_57_0";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_57_1 = mkSwiftformat {
              versionId = "0_57_1";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_57_2 = mkSwiftformat {
              versionId = "0_57_2";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_0 = mkSwiftformat {
              versionId = "0_58_0";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_1 = mkSwiftformat {
              versionId = "0_58_1";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_2 = mkSwiftformat {
              versionId = "0_58_2";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_3 = mkSwiftformat {
              versionId = "0_58_3";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_4 = mkSwiftformat {
              versionId = "0_58_4";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_5 = mkSwiftformat {
              versionId = "0_58_5";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_6 = mkSwiftformat {
              versionId = "0_58_6";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_58_7 = mkSwiftformat {
              versionId = "0_58_7";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_59_0 = mkSwiftformat {
              versionId = "0_59_0";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_59_1 = mkSwiftformat {
              versionId = "0_59_1";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_60_0 = mkSwiftformat {
              versionId = "0_60_0";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
            swiftformat_0_60_1 = mkSwiftformat {
              versionId = "0_60_1";
              platforms = [
                "x86_64-linux"
                "aarch64-linux"
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
          };
        in
        {
          packages = pkgs.lib.filterAttrs (_: pkg: builtins.elem system pkg.meta.platforms) (
            versioned
            // {
              # aliases
              swiftformat_0_47 = versioned.swiftformat_0_47_13;
              swiftformat_0_48 = versioned.swiftformat_0_48_18;
              swiftformat_0_49 = versioned.swiftformat_0_49_18;
              swiftformat_0_50 = versioned.swiftformat_0_50_9;
              swiftformat_0_51 = versioned.swiftformat_0_51_15;
              swiftformat_0_52 = versioned.swiftformat_0_52_11;
              swiftformat_0_53 = versioned.swiftformat_0_53_10;
              swiftformat_0_54 = versioned.swiftformat_0_54_6;
              swiftformat_0_55 = versioned.swiftformat_0_55_6;
              swiftformat_0_56 = versioned.swiftformat_0_56_4;
              swiftformat_0_57 = versioned.swiftformat_0_57_2;
              swiftformat_0_58 = versioned.swiftformat_0_58_7;
              swiftformat_0_59 = versioned.swiftformat_0_59_1;
              swiftformat_0_60 = versioned.swiftformat_0_60_1;
              swiftformat_0 = versioned.swiftformat_0_60_1;
              swiftformat = versioned.swiftformat_0_60_1;
              default = versioned.swiftformat_0_60_1;
            }
          );

          formatter = pkgs.nixfmt;

          devShells.default = pkgs.mkShell {
            packages = [
              inputs'.ignore.packages.default
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
