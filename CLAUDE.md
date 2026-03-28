# CLAUDE.md
This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build / Development Commands

```bash
# Regenerate hashes
nix develop --command nvfetcher -c packages/nvfetcher.toml -o packages/_sources

# Validate all platforms
nix flake check --all-systems

# Build a specific version
nix build .#swiftformat_X_Y_Z

# Validate prek config
nix develop --command prek validate-config prek.toml

# Run all configured hooks manually
nix develop --command prek run --all-files
```

## Adding a New Version

The primary task in this repository is packaging new SwiftFormat releases.

1. Check available releases: `gh release list --repo nicklockwood/SwiftFormat`
2. Add 3 entries to `packages/nvfetcher.toml` (darwin, linux-x86_64, linux-aarch64)
3. Regenerate `packages/_sources/`: `nix develop --command nvfetcher -c packages/nvfetcher.toml -o packages/_sources`
4. Add the package to `flake.nix` and update aliases
5. Update `README.md`
6. Validate all platforms: `nix flake check --all-systems`
7. Verify the build: `nix build`

## Naming Conventions

- Package names in `flake.nix` use underscore separators (e.g. `swiftformat_0_57_0`)

### Alias Conventions

- `swiftformat_<major>_<minor>` = latest patch of that minor series (e.g. `swiftformat_0_47` = latest version of 0.47.x)
- `swiftformat_<major>` = latest of that major series (e.g. `swiftformat_0` = latest version of 0.x.x)
- `swiftformat` / `default` = overall latest

## Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/).

## Pre-commit Hooks

- `nix develop` makes `prek` available in the shell from `nixpkgs-unstable`.
- `nix develop` also provides `nvfetcher`, `gh`, and `ignore`.
- The repo uses `prek.toml` for `prek`.
- Install hooks manually from the repository root with `nix develop --command prek install`.
- See `nix develop --command prek --help` for commands.
- See https://github.com/j178/prek/blob/master/README.md for details.

## Notes

- Do not manually edit files under `packages/_sources/` — managed by nvfetcher
