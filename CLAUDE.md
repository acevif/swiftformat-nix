# CLAUDE.md
This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build / Development Commands

```bash
# Regenerate hashes
nix develop --command nvfetcher

# Validate all platforms
nix flake check --all-systems

# Build a specific version
nix build .#swiftformat_X_Y_Z
```

## Adding a New Version

The primary task in this repository is packaging new SwiftFormat releases.

1. Check available releases: `gh release list --repo nicklockwood/SwiftFormat`
2. Add 3 entries to `nvfetcher.toml` (darwin, linux-x86_64, linux-aarch64)
3. Regenerate `_sources/`: `nix develop --command nvfetcher`
4. Add the package to `flake.nix` and update aliases
5. Update `README.md`
6. Validate all platforms: `nix flake check --all-systems`
7. Verify the build: `nix build`

## Naming Conventions

- Package names in `flake.nix` use underscore separators (e.g. `swiftformat_0_57_0`)

## Alias Conventions

- `swiftformat_0_XX` = latest patch of that minor series
- `swiftformat` / `default` = overall latest

## Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/).

## Notes

- Do not manually edit files under `_sources/` — managed by nvfetcher
