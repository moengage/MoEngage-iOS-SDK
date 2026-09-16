# 16-09-2026

## 3.03.1

- Storage-encryption transitions now apply to trigger data immediately — turning encryption off removes the stale encrypted file even when no RTT sync runs, and turning it on migrates the plain file into the encrypted path

### HotFix

- Fixed the modules not initialised in Swift Package Manager integrations. As a statically linked framework its archive members were pulled in only when a symbol they define was referenced, so classes the SDK resolves by name and `@objcMembers` methods declared in extensions were dropped. The module is now built as a single object file (`GENERATE_MASTER_OBJECT_FILE`), so referencing any part of it links all of it. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must add `-ObjC` to Other Linker Flags** — the linker contributes a statically linked module's code only when the app references a symbol it defines.

# 03-09-2026

## 3.03.0

- Rtt module migrated to swift concurrency
- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. The privacy manifest now ships in a named `MoEngageRealTimeTrigger.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed" and copy `MoEngageRealTimeTrigger.bundle` from the release zip into the app bundle** — with "Do Not Embed" nothing is copied out of the framework, so without it the privacy manifest is missing.

# 22-07-2026

## 3.01.8

### Internal

- Adopted Gif and campaigns utils from `MoEngageCampaignsCore`
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core
- Fixed leading space in podspec version_file path

# 31-03-2026

## 3.01.7

### Internal

- Release for binary compatibility with core

# 03-03-2026

## 3.01.6

- Removed the usage of MoEngageNetworkservice in NetworkRequest.

# 29-01-2026

## 3.01.5

### Internal

- Added automated extension integration setup

# 19-01-2026

## 3.01.4

### Internal

- Binary compatibility changes

# 29-10-2025

## 3.01.3

### Internal

- Removed older JWT authentication

# 17-10-2025

## 3.01.2

- Added automated version and changelog update
- Fixed enum mapping issues
