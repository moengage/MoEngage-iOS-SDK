# 08-10-2026

## 6.02.2

### Internal

- The legacy-storage migration behind `geofenceEnabled` now runs on the `.start` module event instead of `.init`. `.init` is dispatched synchronously inside `MoEngageSDKInstance.syncExecute`, which enters the instance queue via `DispatchQueue.sync` without starting a concurrency job, so storage reads there invoked closures taking `isolated MoEngageSDKInstance` while the runtime still recorded the caller's executor — surfacing as a `data race detected: actor-isolated function ... was not called on the same actor` runtime warning on iOS 17. `.start` runs as a real job on the instance executor, so the migration still happens eagerly at startup with correct isolation

# 16-09-2026

## 6.02.1

### HotFix

- Fixed the modules not initialised in Swift Package Manager integrations. As a statically linked framework its archive members were pulled in only when a symbol they define was referenced, so classes the SDK resolves by name and `@objcMembers` methods declared in extensions were dropped. The module is now built as a single object file (`GENERATE_MASTER_OBJECT_FILE`), so referencing any part of it links all of it. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must add `-ObjC` to Other Linker Flags** — the linker contributes a statically linked module's code only when the app references a symbol it defines.

# 03-09-2026

## 6.02.0

- Migrated Geofence module to the actor-based Swift concurrency model.
- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. The privacy manifest now ships in a named `MoEngageGeofence.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed" and copy `MoEngageGeofence.bundle` from the release zip into the app bundle** — with "Do Not Embed" nothing is copied out of the framework, so without it the privacy manifest is missing.

# 22-07-2026

## 6.00.8

### Internal

- Adopted Gif and campaigns utils from `MoEngageCampaignsCore`
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core
- Fixed leading space in podspec version_file path

# 31-03-2026

## 6.00.7

### Internal

- Release for binary compatibility with core

# 29-01-2026

## 6.00.6

### Internal

- Added automated extension integration setup

# 19-01-2026

## 6.00.5

### Internal

- Binary compatibility changes

# 29-10-2025

## 6.00.4

### Internal

- Removed older JWT authentication

# 17-10-2025

## 6.00.3

- Fixed geofence API endpoint mapping issues

# 15-07-2025

## 6.00.2

- Added automated version and changelog update
- Added support for file based initialization
