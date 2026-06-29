# 29-06-2026

## 7.06.0

- InAppConstants coversion to swift
- InAppUtils migrated to swift 
- Updated In-App copy action alert title string (MoEngageInAppConstants.coupon) to Coupon copied!.
- Fixed Bottom nudge showing alongside BottomLeft/BottomRight nudges by treating them as mutually exclusive in the position suppression gate.
- Push to InApp: Introduced DisplayGate which dismisses any low priority inapps to make way for higher priority one.
- Fixed animated GIF in-app media rendering as a static image when the media URL does not end in `.gif` (e.g. `.gifv`); GIF detection now inspects the asset's content instead of the URL extension.
- Added support for moveable nudges (iOS only).Nudges marked as floating can now be dragged freely by the user. The nudge snaps to the nearest horizontal edge on release with a spring animation. 
- Added support for moveable nudges (iOS only).Nudges marked as floating can now be dragged freely by the user. The nudge snaps to the nearest horizontal edge on release with a spring animation. 

### BugFix

- HTML nudges now correctly respect safe area insets in all orientations (iOS only). Percentage-based dimensions are computed from the top view controller's view, ensuring full-width nudges stay within bounds in landscape and never overlap the navigation bar, Dynamic Island, or home indicator.

# 30-04-2026

## 7.05.4

### Internal

- InAppController Phase 2 Swift Migration
- Made `occupiedNudgePosition` of MoEngageInAppConfigurationHandler thread safe
- ContainerView migrated to Swift
- Handle Exception Crash in InApp Objective C to Swift conversion.
- Internal Enum conversion to Swift

# 15-04-2026

## 7.05.3

### Internal
- FC and other test fix for CI
- InAppsDelegate Handler Objc to Swift Migration
- InApp template API model migration
- InAppsAssetManager Swift Migration
- Release for binary compatibility with core
- InApps ActionHandler Objc to Swift Migration
- InApp Image widget migration.
- Unit Test update for unique ids
- Button widget migration.
- InApp Label and Feedback label migration from Objective C to Swift
- Migrated inapp star rating widget.
- InAppController Phase 1 Swift Migration

# 31-03-2026

## 7.05.2

### Internal
- FC and other test fix for CI
- InAppsDelegate Handler Objc to Swift Migration
- InApp template API model migration
- InAppsAssetManager Swift Migration
- Release for binary compatibility with core
- InApps ActionHandler Objc to Swift Migration
- InApp Image widget migration.
- Unit Test update for unique ids

# 03-03-2026

## 7.05.1

- [BugFix] Handled HTML Inapp navigation callback in main thread.
- Migrated MoEngageInAppDebuggingService from objective-c to swift

### Internal

- InApp data manager migration from Objective C to Swift
- InApp campaign evaluation migration from Objective C to Swift
- InApp RatingView and CustomRatingView migration from Objective C to Swift
- InApp JS Bridge and WebView migration from Objective C to Swift

# 29-01-2026

## 7.05.0

- Added Frequency Capping for Inapps

### CrashFix

- Fixed crash with HTML nudge testing

### Internal

- Added automated extension integration setup
- Added support for device level campaign show count and delay

# 19-01-2026

## 7.04.0
- Added Frequency Capping for Inapps
- Added Segment Re-evaluation Support

### Internal

- Binary compatibility changes
- InApp Stats migration from Objective C to Swift.
- Push click action not working on notification drawer fix
- Fixed the focus warning seen in tvOS while dismissing the inapp.

# 01-12-2025

## 7.03.4

### Internal

- Fixed InApps Warnings
- Remove unrequired data from backup

# 29-10-2025

## 7.03.3

- [BugFix] Added missing mapping for InApp Stat.

### Internal

- Removed older JWT authentication
- Converted MoEngageInAppCampaignMeta to swift

# 13-10-2025

## 7.03.2

- [BugFix] Fixed stats API migration issue where old batches were using v2 format on v1 endpoint.
- Replaced the deprecated API to ensure iOS 13 compatibility
- Fixed an internal Objective-C keyword conflict by renaming a variable for C++ build compatibility.

# 24-09-2025

## 7.03.1

- Nullability and nullable warning fixes
- [CrashFix] Fix crash in MoEngageInAppState encoding when expiry_time is nil.

# 20-09-2025

## 7.03.0

- Campaign priority management support added.
- Updated bordering,resizing of imageviews, containers in InApps
- Added support for Multi-ID in JS bridge

# 28-08-2025

## 7.02.2

- MOEN:39995: [CrashFix] Fixed Inapps condition evaluator thread safety issue

# 21-08-2025

## 7.02.1

- Fixed the universal deeplink callback to SceneDelegate.
- Fixed nullability specifier warnings/errors in ObjC files

# 05-08-2025

## 7.02.0

- Added support for new test inapp experience
- Added HTML Nudges support in InApps module

# 25-07-2025

## 7.01.2

- Added automated version and changelog update
- Added accessibility support for gifs & images to remain visible in InApps
- [CrashFix] Updated dismiss method to enumerate on copy of collections
