# swiftformat-nix

Versioned SwiftFormat packages for Nix.

## Available Packages

- `swiftformat_0_60_1` — SwiftFormat 0.60.1
- `swiftformat_0_58_7` — SwiftFormat 0.58.7
- `swiftformat` — latest
- `swiftformat_0_60` — 0.60.x latest
- `swiftformat_0_58` — 0.58.x latest
- `default` — latest

**Supported platforms**: `x86_64-linux`, `aarch64-linux`, `x86_64-darwin`, `aarch64-darwin`

## Usage

### Direct run

```bash
nix run github:acevif/swiftformat-nix#swiftformat_0_60_1 -- --version
nix run github:acevif/swiftformat-nix#swiftformat_0_58_7 -- --version
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
