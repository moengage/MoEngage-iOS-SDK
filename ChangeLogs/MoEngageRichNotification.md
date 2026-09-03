# 03-09-2026

## 8.01.11

### Internal

- Push template XIBs now ship in a named `MoEngageRichNotification.bundle` inside the framework rather than at the framework root. The privacy manifest stays at the framework root. The framework remains dynamically linked, as the notification service and content extensions link it and each runs in its own process.

- Fixed rich push media not displaying for dynamic media URLs by resolving the server's Content-Type, falling back to the URL extension when unavailable

# 22-07-2026

## 8.01.9

### Internal

- Adopted Gif and campaigns utils from `MoEngageCampaignsCore` and removed deprecated `MoEngageExceptionUtils` usage
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core

# 25-05-2026

## 8.01.8

### Internal

- Updated the logic of Badge Count
- Fixed leading space in podspec version_file path

# 31-03-2026

## 8.01.7

### Internal

- Release for binary compatibility with core
- Fixed the CI data race condition.

# 29-01-2026

## 8.01.6

### Internal

- Added automated extension integration setup

# 19-01-2026

## 8.01.5

### Internal

- Binary compatibility changes

# 01-12-2025

## 8.01.4

- Cleared template subtitle when rich push omits it

### Internal

- Remove unrequired data from backup

# 28-08-2025

## 8.01.3

- Improve push notification received impression tracking performance.

# 15-07-2025

## 8.01.2

- Added automated version and changelog update
- Added support for file based initialization
