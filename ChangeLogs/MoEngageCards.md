# 22-07-2026

## 6.00.00

- `presentCardsViewController`, `pushCardsViewController` and `getCardsViewController` are now annotated `@MainActor`. Objective-C callers are unaffected; Swift callers invoking these from a non-main-actor context must now hop to the main actor (e.g. `await MainActor.run { … }`).
- Cards concurrency migration.

### Internal

- Adopted Gif and campaigns utils from `MoEngageCampaignsCore` and replaced deprecated `MoEngagePlatformInfo` API usage
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core

# 25-05-2026

## 5.01.12

### Bug Fixes

- Fixed card resurrection bug — soft-deleted card re-issued by server now correctly resets `isDeleted` flag and re-enters user-activity reporting

### Internal

- Fixed leading space in podspec version_file path

# 31-03-2026

## 5.01.11

### Internal

- Release for binary compatibility with core

# 03-03-2026

## 5.01.10

### Internal

- Added the unit test cases for cards controller fixing the data race.

# 29-01-2026

## 5.01.9

### Internal

- Added automated extension integration setup
- Optimized cards controller code snippet for unit test
- Added the unit test cases to the files that are under model

# 19-01-2026

## 5.01.8

### Internal

- Binary compatibility changes

# 01-12-2025

## 5.01.7

### Internal

- Remove unrequired data from backup

# 29-10-2025

## 5.01.6

### Internal

- Removed older JWT authentication

# 13-10-2025

## 5.01.5

- Replaced the deprecated API to ensure iOS 13 compatibility

# 28-08-2025

## 5.01.4
- Added UID and Multi-Id to cards user activity API request call

# 21-08-2025

## 5.01.3

- Fixed the universal deeplink callback to SceneDelegate.

# 08-07-2025

## 5.01.2

- Added automated version and changelog update
- Added missing accessibility data inside metadata dictionary of cards for hybrid platforms.

