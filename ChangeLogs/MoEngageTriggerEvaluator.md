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
