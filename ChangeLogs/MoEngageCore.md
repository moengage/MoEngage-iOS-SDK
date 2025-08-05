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
