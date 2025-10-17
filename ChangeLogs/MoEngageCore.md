# 17-10-2025

## 10.05.2

- Added SDK data center 101

# 13-10-2025

## 10.05.1

### Internal
- Replaced the deprecated API to ensure iOS 13 compatibility
- Fixed an internal Objective-C keyword conflict by renaming a variable for C++ build compatibility.

# 24-09-2025

## 10.05.0

- Added multiple project support in single workspace
- Added support for portfolio level user attributes tracking

# 20-09-2025

## 10.04.1

- Campaign priority management support added.

### CrashFix

- Fixed duplicated user attribute migration from 7.x version

# 08-09-2025

## 10.04.0

- Added support for device attributes tracking

### Internal
- Moved push opt-in status to report calls

# 28-08-2025

## 10.03.5

### Internal
- Added improvements to data tracking debugging.

# 21-08-2025

## 10.03.4
- Fixed the universal deeplink callback to SceneDelegate.Moved the method to CampaignsCore framework

### Internal
- Fixed nullability specifier warnings/errors in ObjC files

# 05-08-2025

## 10.03.3

- Added support for new test inapp experience
### Internal
- Convert some tests to new Swift testing framework
- Added fallback SDK configuration for partner SDKs

# 25-07-2025

## 10.03.2

- Removed fallback domain switch functionality.
- Updated file based initialization keys
    - IsSdkAutoInitialisationDisabled -> IsSdkAutoInitialisationEnabled
    - AnalyticsDisablePeriodicFlush -> AnalyticsEnablePeriodicFlush
- Resolved the issue with incorrect unique ID retrieval from the extension, ensuring accurate Request ID generation.

# 16-07-2025

## 10.03.1

- Updated Xcode version to fix typed throws API not being added to swift module interface

# 15-07-2025

## 10.03.0

- Added support for file based initialization

# 08-07-2025

## 10.02.3

- Added automated version and changelog update
- Order of Event tracking for Offering Clicked updated.
- Fixed data tracked immediately after logout being lost
