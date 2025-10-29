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
