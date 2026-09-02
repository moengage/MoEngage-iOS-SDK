# 02-09-2026 

## 6.01.00

- Removed the SDK's default "Dismiss" notification action from the `MOE_DISMISS_CATEGORY` and `MOE_PUSH_TEMPLATE` categories.

# 22-07-2026

## 6.00.00

### Breaking changes

- SDK throws Fatal Error in case of Public API before SDK Initialization
- Public methods that previously returned `Void` now return a `MoEngageBaseTask` subclass. Direct calls and ObjC callers compile unchanged (`@discardableResult` covers ignored returns; ObjC selector encoding is return-type-agnostic). Function-reference assignments with an explicit `Void` return on the lvalue no longer type-match — `@discardableResult` does not propagate through function-typed assignments.

  Example (compile error → workaround):
  ```swift
  // Compile error after let tokenFn: (Data) -> Void = MoEngageSDKMessaging.sharedInstance.setPushToken

  // Workaround — wrap with an explicit closure:
  let tokenFn: (Data) -> Void = { _ = MoEngageSDKMessaging.sharedInstance.setPushToken($0) }
  ```

### Internal

- Adopted Gif and campaigns utils from `MoEngageCampaignsCore` and removed deprecated `MoEngageDictionaryConvertible` protocol conformance
- Migrated MoEngageSDKMessaging public APIs to typed-task returns, via `@discardableResult`. Added public `MoEngageMessagingRequestFailureReason` and per-API Result/Task types. `logNotificationReceived` ships a deprecation on the completion-block variant and rejects duplicate-impression payloads with `.duplicateImpression`.
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core

# 29-06-2026

## 5.03.01

### Internal

- Fixed Main Thread Checker warning by reading `UIApplication.applicationState` on the main thread in `applicationDidReceiveRemoteNotification(_:)`.

# 25-05-2026

## 5.03.00

- Updated the logic of Badge Count. Deprecated existing `disableBadgeReset()` of MoEngageSDKMessaging and introduced support a new key `MoEngageBadgeUpdateEnabled` in Info.plist
 
### Internal

- Fixed leading space in podspec version_file path

# 31-03-2026

## 5.02.01

### Internal

- Release for binary compatibility with core
- Added the loggers to push related files 
- Fixed the CI data race condition.

# 29-01-2026

## 5.02.00

- Added support for SelfHandled Background Push.

### Internal

- Added automated extension integration setup
- Added the unit test cases for pushdatamanager and messagingutils

# 19-01-2026

## 5.01.10

- Added the new API logNotificationClicked that can accurately track click or dimiss of                      notification
- push_opt_in_mode attribute value fix

### Internal

- Binary compatibility changes

# 29-10-2025

## 5.01.9

### Internal

- Removed older JWT authentication

# 13-10-2025

## 5.01.8

- Replaced the deprecated API to ensure iOS 13 compatibility
- Updated push opt-in with nil check

# 08-09-2025

## 5.01.7
- Moved push opt-in status to report calls

# 28-08-2025

## 5.01.6

- Added completion callback to `logNotificationReceived`. Deprecated older API without completion.

# 21-08-2025

## 5.01.5
- Fixed the universal deeplink callback to SceneDelegate.

# 05-08-2025

## 5.01.4

- Added support for new test inapp experience

# 15-07-2025

## 5.01.3

- Added automated version and changelog update
- Added support for file based initialization
