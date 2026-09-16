# 16-09-2026

## 8.02.00

- Added Telemetry to track push notifications(startspan,cheeckpoints,endspan). A notification that renders after losing some of its assets is now reported as a successful render rather than a failure — `is_success` answers whether the notification reached the user, while the failed assets stay visible in their own `asset_download` checkpoints and in `basic_rendering`. `basic_rendering` now records on every push, including a plain one with no assets — it brackets the payload-to-displayable-content step (aps rewrite plus the HTML→string conversion of title, subtitle and body), which is where the real cost sits; it no longer doubles as a degradation marker, since the per-asset checkpoints already carry that.

### BugFix

- Fixed the app icon badge being one higher than the notification tray after a notification update (same update key). The extension now excludes the notification being replaced when computing the badge.

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
