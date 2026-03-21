# swiftformat-nix

Versioned SwiftFormat packages for Nix.

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

### Aliases

- `swiftformat_0_60` — 0.60.x latest
- `swiftformat_0_59` — 0.59.x latest
- `swiftformat_0_58` — 0.58.x latest
- `swiftformat` — latest
- `default` — latest

**Supported platforms**: `x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`

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
