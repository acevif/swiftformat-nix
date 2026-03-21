# swiftformat-nix

Versioned [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) packages for [Nix](https://nixos.org/).

## Available Packages

- `swiftformat_0_60_1` — SwiftFormat 0.60.1
- `swiftformat_0_60_0` — SwiftFormat 0.60.0
- `swiftformat_0_59_1` — SwiftFormat 0.59.1
- `swiftformat_0_59_0` — SwiftFormat 0.59.0
- `swiftformat_0_58_7` — SwiftFormat 0.58.7
- `swiftformat_0_58_6` — SwiftFormat 0.58.6
- `swiftformat_0_58_5` — SwiftFormat 0.58.5
- `swiftformat_0_58_4` — SwiftFormat 0.58.4
- `swiftformat_0_58_3` — SwiftFormat 0.58.3
- `swiftformat_0_58_2` — SwiftFormat 0.58.2
- `swiftformat_0_58_1` — SwiftFormat 0.58.1
- `swiftformat_0_58_0` — SwiftFormat 0.58.0
- `swiftformat_0_57_2` — SwiftFormat 0.57.2
- `swiftformat_0_57_1` — SwiftFormat 0.57.1
- `swiftformat_0_57_0` — SwiftFormat 0.57.0
- `swiftformat_0_56_4` — SwiftFormat 0.56.4
- `swiftformat_0_56_3` — SwiftFormat 0.56.3
- `swiftformat_0_56_2` — SwiftFormat 0.56.2
- `swiftformat_0_56_1` — SwiftFormat 0.56.1
- `swiftformat_0_56_0` — SwiftFormat 0.56.0
- `swiftformat_0_55_6` — SwiftFormat 0.55.6
- `swiftformat_0_55_5` — SwiftFormat 0.55.5 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_55_4` — SwiftFormat 0.55.4 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_55_3` — SwiftFormat 0.55.3 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_55_2` — SwiftFormat 0.55.2 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_55_1` — SwiftFormat 0.55.1 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_55_0` — SwiftFormat 0.55.0 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_6` — SwiftFormat 0.54.6 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_5` — SwiftFormat 0.54.5 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_4` — SwiftFormat 0.54.4 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_3` — SwiftFormat 0.54.3 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_2` — SwiftFormat 0.54.2 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_1` — SwiftFormat 0.54.1 ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat_0_54_0` — SwiftFormat 0.54.0 ([not available on `aarch64-linux`](#aarch64-linux-note))

### Aliases

- `swiftformat_0_60` — 0.60.x latest
- `swiftformat_0_59` — 0.59.x latest
- `swiftformat_0_58` — 0.58.x latest
- `swiftformat_0_57` — 0.57.x latest
- `swiftformat_0_56` — 0.56.x latest
- `swiftformat_0_55` — 0.55.x latest
- `swiftformat_0_54` — 0.54.x latest ([not available on `aarch64-linux`](#aarch64-linux-note))
- `swiftformat` — latest
- `default` — latest

### Supported Platforms

Packages are provided for `x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, and `aarch64-darwin`. [Older versions have limited platform support.](#aarch64-linux-note)

#### aarch64-linux note

Versions 0.55.5 and earlier are not available on `aarch64-linux` because upstream does not provide an `aarch64-linux` binary.

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

## Development

To update or add versions, edit `nvfetcher.toml` and run:

```bash
nix develop -c nvfetcher
```
