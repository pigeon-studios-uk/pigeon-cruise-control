# Changelog

All notable changes to Pigeon Cruise Control are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

First release.

### Highlights

- Cruise control on Y, holding the speed up and down hills
- Off when braking, the handbrake, a crash or leaving the seat
- Faster and slower keys, mph or km/h
- Exports for HUDs and other resources
- 23 languages

### Added

- Cruise control with one key (Y by default, which players can change in GTA's key bindings) or `/cruise`, at the current speed rounded to a whole mph or km/h.
- The set speed held by capping the vehicle's top speed and holding the accelerator below it, easing off near the set speed.
- Turning off on braking, the handbrake, a crash, the engine stopping or leaving the driver's seat.
- `/cruiseup` and `/cruisedown`, with optional keys, in steps of `Config.Step`.
- `Config.Units` (`'mph'` or `'kmh'`), `Config.MinSpeed` and `Config.BlockedClasses`.
- `IsCruising`, `GetCruiseSpeed` and `Cancel` client exports.
- Messages and key binding names in 23 languages, following ox_lib's language with `Config.Locale = 'auto'`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-cruise-control/commits/main
