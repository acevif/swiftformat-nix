# swiftformat-nix

Versioned [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) packages for [Nix](https://nixos.org/).

## Usage

### Direct run

```bash
nix run github:acevif/swiftformat-nix#swiftformat_0_60_1 -- --version
```

### As a flake input

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    swiftformat-nix.url = "github:acevif/swiftformat-nix";
  };

  outputs = { self, nixpkgs, swiftformat-nix, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          swiftformat-nix.packages.${system}.swiftformat_0_58_7
        ];
      };
    };
}
```

### nix profile install

```bash
nix profile install github:acevif/swiftformat-nix#swiftformat_0_60_1
```

## Available Packages

### Aliases

- `swiftformat_0_60` — 0.60.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_59` — 0.59.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58` — 0.58.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_57` — 0.57.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56` — 0.56.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55` — 0.55.x latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54` — 0.54.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53` — 0.53.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52` — 0.52.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51` — 0.51.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50` — 0.50.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49` — 0.49.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48` — 0.48.x latest (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47` — 0.47.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat` — latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `default` — latest (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)

### Versions

- `swiftformat_0_60_1` — SwiftFormat 0.60.1 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_60_0` — SwiftFormat 0.60.0 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_59_1` — SwiftFormat 0.59.1 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_59_0` — SwiftFormat 0.59.0 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_7` — SwiftFormat 0.58.7 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_6` — SwiftFormat 0.58.6 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_5` — SwiftFormat 0.58.5 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_4` — SwiftFormat 0.58.4 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_3` — SwiftFormat 0.58.3 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_2` — SwiftFormat 0.58.2 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_1` — SwiftFormat 0.58.1 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_58_0` — SwiftFormat 0.58.0 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_57_2` — SwiftFormat 0.57.2 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_57_1` — SwiftFormat 0.57.1 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_57_0` — SwiftFormat 0.57.0 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56_4` — SwiftFormat 0.56.4 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56_3` — SwiftFormat 0.56.3 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56_2` — SwiftFormat 0.56.2 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56_1` — SwiftFormat 0.56.1 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_56_0` — SwiftFormat 0.56.0 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_6` — SwiftFormat 0.55.6 (`x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_5` — SwiftFormat 0.55.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_4` — SwiftFormat 0.55.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_3` — SwiftFormat 0.55.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_2` — SwiftFormat 0.55.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_1` — SwiftFormat 0.55.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_55_0` — SwiftFormat 0.55.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_6` — SwiftFormat 0.54.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_5` — SwiftFormat 0.54.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_4` — SwiftFormat 0.54.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_3` — SwiftFormat 0.54.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_2` — SwiftFormat 0.54.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_1` — SwiftFormat 0.54.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_54_0` — SwiftFormat 0.54.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_10` — SwiftFormat 0.53.10 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_9` — SwiftFormat 0.53.9 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_8` — SwiftFormat 0.53.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_7` — SwiftFormat 0.53.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_6` — SwiftFormat 0.53.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_5` — SwiftFormat 0.53.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_4` — SwiftFormat 0.53.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_3` — SwiftFormat 0.53.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_2` — SwiftFormat 0.53.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_1` — SwiftFormat 0.53.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_53_0` — SwiftFormat 0.53.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_11` — SwiftFormat 0.52.11 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_10` — SwiftFormat 0.52.10 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_9` — SwiftFormat 0.52.9 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_8` — SwiftFormat 0.52.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_7` — SwiftFormat 0.52.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_6` — SwiftFormat 0.52.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_5` — SwiftFormat 0.52.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_4` — SwiftFormat 0.52.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_3` — SwiftFormat 0.52.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_2` — SwiftFormat 0.52.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_1` — SwiftFormat 0.52.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_52_0` — SwiftFormat 0.52.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_15` — SwiftFormat 0.51.15 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_13` — SwiftFormat 0.51.13 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_12` — SwiftFormat 0.51.12 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_11` — SwiftFormat 0.51.11 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_10` — SwiftFormat 0.51.10 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_9` — SwiftFormat 0.51.9 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_8` — SwiftFormat 0.51.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_7` — SwiftFormat 0.51.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_6` — SwiftFormat 0.51.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_5` — SwiftFormat 0.51.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_4` — SwiftFormat 0.51.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_3` — SwiftFormat 0.51.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_2` — SwiftFormat 0.51.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_1` — SwiftFormat 0.51.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_51_0` — SwiftFormat 0.51.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_9` — SwiftFormat 0.50.9 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_8` — SwiftFormat 0.50.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_7` — SwiftFormat 0.50.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_6` — SwiftFormat 0.50.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_5` — SwiftFormat 0.50.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_4` — SwiftFormat 0.50.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_3` — SwiftFormat 0.50.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_2` — SwiftFormat 0.50.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_1` — SwiftFormat 0.50.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_50_0` — SwiftFormat 0.50.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_18` — SwiftFormat 0.49.18 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_17` — SwiftFormat 0.49.17 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_16` — SwiftFormat 0.49.16 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_15` — SwiftFormat 0.49.15 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_14` — SwiftFormat 0.49.14 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_13` — SwiftFormat 0.49.13 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_12` — SwiftFormat 0.49.12 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_11` — SwiftFormat 0.49.11 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_10` — SwiftFormat 0.49.10 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_9` — SwiftFormat 0.49.9 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_8` — SwiftFormat 0.49.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_7` — SwiftFormat 0.49.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_6` — SwiftFormat 0.49.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_5` — SwiftFormat 0.49.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_4` — SwiftFormat 0.49.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_3` — SwiftFormat 0.49.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_2` — SwiftFormat 0.49.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_1` — SwiftFormat 0.49.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_49_0` — SwiftFormat 0.49.0 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_18` — SwiftFormat 0.48.18 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_17` — SwiftFormat 0.48.17 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_16` — SwiftFormat 0.48.16 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_15` — SwiftFormat 0.48.15 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_14` — SwiftFormat 0.48.14 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_13` — SwiftFormat 0.48.13 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_12` — SwiftFormat 0.48.12 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_11` — SwiftFormat 0.48.11 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_10` — SwiftFormat 0.48.10 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_9` — SwiftFormat 0.48.9 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_8` — SwiftFormat 0.48.8 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_7` — SwiftFormat 0.48.7 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_6` — SwiftFormat 0.48.6 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_5` — SwiftFormat 0.48.5 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_4` — SwiftFormat 0.48.4 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_3` — SwiftFormat 0.48.3 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_2` — SwiftFormat 0.48.2 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_1` — SwiftFormat 0.48.1 (`x86_64-linux`, `x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_48_0` — SwiftFormat 0.48.0 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_13` — SwiftFormat 0.47.13 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_12` — SwiftFormat 0.47.12 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_11` — SwiftFormat 0.47.11 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_10` — SwiftFormat 0.47.10 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_9` — SwiftFormat 0.47.9 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_8` — SwiftFormat 0.47.8 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_7` — SwiftFormat 0.47.7 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_6` — SwiftFormat 0.47.6 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_5` — SwiftFormat 0.47.5 (`x86_64-darwin`, `aarch64-darwin`)
- `swiftformat_0_47_4` — SwiftFormat 0.47.4 (`x86_64-darwin`, `aarch64-darwin`)
