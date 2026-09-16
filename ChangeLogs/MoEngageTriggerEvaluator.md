# 16-09-2026

## 2.02.1

### HotFix

- Fixed the modules not initialised in Swift Package Manager integrations. As a statically linked framework its archive members were pulled in only when a symbol they define was referenced, so classes the SDK resolves by name and `@objcMembers` methods declared in extensions were dropped. The module is now built as a single object file (`GENERATE_MASTER_OBJECT_FILE`), so referencing any part of it links all of it. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must add `-ObjC` to Other Linker Flags** — the linker contributes a statically linked module's code only when the app references a symbol it defines.

# 03-09-2026

## 2.02.0

- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed".** This module ships no resources, so nothing else needs copying.

# 22-07-2026

## 2.00.6

### Internal

- Removed deprecated `MoEngageDictionaryConvertible` protocol conformance
- Release for binary compatibility with core
- Fixed leading space in podspec version_file path

# 31-03-2026

## 2.00.5

### Internal

- Release for binary compatibility with core

# 29-01-2026

## 2.00.4

### Internal

- Added automated extension integration setup

# 19-01-2026

## 2.00.3

### Internal

- Binary compatibility changes

# 05-08-2025

## 2.00.2

- Added automated version and changelog update
- Added support for new test inapp experience
