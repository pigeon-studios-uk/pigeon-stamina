# Changelog

All notable changes to Pigeon Stamina are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-08

First release.

### Highlights

- Infinite stamina, if you want it
- Or stamina that drains and recovers at your rates
- Sprinting and swimming both covered

### Added

- `Config.Mode = 'infinite'`, which keeps stamina full.
- `Config.Mode = 'scaled'`, with `Config.DrainMultiplier` (0.5 by default, so stamina lasts twice as long) and `Config.RecoverMultiplier`.
- Respawn refills left as they are.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-stamina/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-stamina/releases/tag/v1.0.0
