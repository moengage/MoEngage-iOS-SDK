# 22-07-2026

## 11.00.0

- Completed the Swift concurrency migration — the module now builds in the Swift 6 language mode with `SWIFT_STRICT_CONCURRENCY = complete`. All remaining GCD-based threading was moved to the actor model (`@MoEngageGlobalActor`, the `MoEngageSDKInstance` actor backed by `MoEngageSerialExecutor`, and `@MoEngageLoggerActor`); the legacy GCD surface (`MoEngageCoreHandler.globalQueue`, `sdkInstance.sdkQueue`, `MoEngageQueuedControllerProvider`, `MoEngageDelayedOperation*`) is retained as deprecated shims under `Deprecated/` for binary compatibility.
- Added Scene delegate swizzling support
- Introduced actor-based concurrency APIs replacing the legacy GCD threading model — `MoEngageAsyncWorkQueue` for async work sequencing with configurable concurrency and targeted cancellation (replaces `OperationQueue`/`MoEngageDelayedOperation`), `MoEngageAppLifeCycleEventHandler` for actor-isolated app lifecycle event handling, and the `MoEngageModule.Item` event bus with ordered sync/async `process(event:)` callbacks (replaces the legacy lifecycle delegate/manager hierarchy). Legacy GCD APIs are retained as deprecated shims for binary compatibility.
- Added concurrency-safe storage, network, config and remote config APIs built on `MoEngageSDKInstance` actor isolation — the `MoEngageStorage` family (`Specification` + sync/async `State` access) with `InMemory`/`File`/`Keychain`/`UserDefault`/`Folder`/`Mirrored`/`Migrating` backends and composable AES-encrypted, app-group and processor layers; typed HTTP network locations (`MoEngageStorage.Network.HTTP.TypedGet`/`TypedSet`, plus raw data/download tasks) with authentication, base-domain, GZip, encryption and timeout processors; and actor-isolated `MoEngageConfig.Data` SDK config (read via `sdkInstance.config`) and `MoEngageConfig.Remote.Data` remote config (read via `sdkInstance.remoteConfig`), each with its manager, specification and extension-aware snapshots.
- Added typed task return values on Core public APIs to surface per-call `onSuccess` / `onFailure` / async `result()` outcomes, replacing the previous fire-and-forget signatures. Migrated APIs: `MoEngageSDKAnalytics.trackEvent`; the `setUserAttribute` family (including `setAlias`, `setUniqueID`, `setEmailID`, `setName`, `setLocation`, and date / epoch / ISO variants); `identifyUser`; `getUserIdentities`; `setDeviceAttribute`; `appStatus`; `flush`; `resetUser`; `processURL`; `trackLocale`; the six `enable` / `disable` `{DataTracking, IDFA, IDFV}Tracking` toggles; partner integration (`enableSDKForPartner`, `addIntergrationInfo`); and the `MoEngage.initialize*` overloads — each returns its own `MoEngageBaseTask` subclass. `trackLocale` reports per-attribute outcomes (`acceptedAttributes` + `skippedAttributes` on success; rejects `MoEngageCoreRequestFailureReason(moduleCode: .trackLocaleSubAttributeFailed)` when every attempted attribute is skipped). Added an SDK-autonomous event surface via `MoEngage.registerSDKEventObserver(_:forWorkspaceId:)` and `AsyncStream` counterpart `sdkEventStream(forWorkspaceId:)` — delivering `MoEngageSDKEventSyncSuccess` / `MoEngageSDKEventSyncFailure` for background batch syncs.
- Removed depreacated Cards method in concurrency migration 

### Internal

- Added unit tests for keychain storage access-group resolution and empty access-group handling

### BREAKING CHANGE

- Public methods that previously returned `Void` now return a `MoEngageBaseTask` subclass. Direct calls and ObjC callers compile unchanged (`@discardableResult` covers ignored returns; ObjC selector encoding is return-type-agnostic). Function-reference assignments with an explicit `Void` return on the lvalue no longer type-match — `@discardableResult` does not propagate through function-typed assignments.

  Example (compile error → workaround):
  ```swift
  // Compile error after let trackFn: (String, MoEngageProperties?, String?) -> Void = MoEngageSDKAnalytics.sharedInstance.trackEvent

  // Workaround — wrap with an explicit closure:
  let trackFn: (String, MoEngageProperties?, String?) -> Void = { name, props, appID in
      _ = MoEngageSDKAnalytics.sharedInstance.trackEvent(name, withProperties: props, forAppID: appID)
  }
  ```
- SDK throws Fatal Error in case of Public API before SDK Initialization
- `MoEngageSDKAnalytics` now requires user/device attribute values to conform to `Sendable` for Swift concurrency safety — the value parameters of the following public APIs changed from `Any` to `any Sendable`. Under the Swift 6 language mode / strict concurrency, call sites passing non-`Sendable` values will need to be updated. Affected APIs:
  - `setUserAttribute(_:withAttributeName:level:forAppID:)` — `value` parameter (`Any` → `any Sendable`)
  - `setDeviceAttribute(_:withName:forWorkspaceId:)` — `value` parameter (`Any` → `any Sendable`)
- The following public callback protocols are now `Sendable` and `@MainActor` isolated. Conforming types must be safe to use across concurrency domains, and their callback methods are now invoked on the main actor — implementations that were not already main-thread confined will need to be updated:
  - `MoEngageAnalyticsCallBack`
  - `MoEngageAuthenticationError.Listener`
- `MoEngageProperties` now requires event attribute values to conform to `Sendable` for Swift concurrency safety — the value/payload parameters of the following public APIs changed from `Any` to `any Sendable`. Under the Swift 6 language mode / strict concurrency, call sites passing non-`Sendable` values (including untyped `[String: Any]` dictionaries) will need to be updated. Affected APIs:
  - `init(withAttributes:)` — `attributesDict` parameter (`[String: Any]` → `[String: any Sendable]`)
  - `updateAttributes(withPluginPayload:)` — `payloadDict` parameter (`[String: Any]` → `[String: any Sendable]`)
  - `addAttribute(_:withName:)` — `attrVal` parameter (`Any` → `any Sendable`)
- `MoEngageSDKAppPersonalization` (deprecated) now requires experience/offering attribute values to conform to `Sendable` — its public track APIs changed their dictionary parameters from `[String: Any]`/`[[String: Any]]` to `[String: any Sendable]`/`[[String: any Sendable]]`. Under the Swift 6 language mode / strict concurrency, call sites passing non-`Sendable` values (including untyped `[String: Any]` dictionaries) will need to be updated. Affected APIs:
  - `experienceShown(experienceAttribute:forWorkspaceId:)` / `experienceShown(experienceAttribute:)`
  - `experienceShown(experienceAttributes:forWorkspaceId:)` / `experienceShown(experienceAttributes:)`
  - `experienceClicked(experienceAttribute:forWorkspaceId:)` / `experienceClicked(experienceAttribute:)`
  - `experienceClicked(experienceAttributes:forWorkspaceId:)` / `experienceClicked(experienceAttributes:)`
  - `offeringShown(offeringAttributes:forWorkspaceId:)` / `offeringShown(offeringAttributes:)`
  - `offeringClicked(offeringAttributes:withExperienceAttributes:forWorkspaceId:)` and its overloads

# 29-06-2026

## 10.09.0

- Added Scene delegate swizzling support

### BugFix

- Suppressed spurious `ImageView doesnot exist` warning emitted by `MoEngageGifManager.setImage` when assigning a non-GIF image (e.g. card placeholders, basic/illustration cards) to an untracked imageView.

# 25-05-2026

## 10.08.2

### CrashFix

- Fixed crash in allClasses(forFrameworks:) caused by NSClassFromString triggering Swift metadata realization for third-party classes on iOS 15/16

### Internal

- Made the method `mainApplicationBundle` of MoEngageInitialization as public to access in Messaging module.
- Fixed leading space in podspec version_file path

# 30-04-2026

## 10.08.1

- Expose generic actor isolated execution API
- Fixed a crash occurring in Unit Tests that happened immediately on launch when executed without a host app.

# 15-04-2026

## 10.08.0

### Internal

- Core Tests Tsan Fix
- Added `Personalize` module and support

# 31-03-2026

## 10.07.2

### BugFix

- Fixed background task leak when MoEngageLiveActivity framework is not integrated. 

### Internal

- InAppsDelegate Handler Objc to Swift Migration
- Improved data tracking implementation logic and performance
- Added adoption tracking for integrated extensions

# 29-01-2026

## 10.07.1

### Internal

- Added automated extension integration setup

# 19-01-2026

## 10.07.0

- Added support for Frequency Capping in InApps
- Added support for transactional live activity
- Added custom base domain configuration for MoEngage REST APIs

### Internal

- Provide logout completion callback after new user created
- Fixed remote config request contract
- Added no-code SDK file based initialization
- Added new module callback handling approach with `MoEngageModule`
- Fixed incorrect error log when deleting file

# 01-12-2025

## 10.06.1

- Added support for `inTheFollowing` operator for String

### Internal

- Fixed InApps Warnings
- Remove unrequired data from backup

# 29-10-2025

## 10.06.0

- Added option to remotely update data center host
- Updated JWT implementation to v2

### Internal

- Removed older JWT authentication
- Fixed typo in JWT authorization initialization config
- Exposed single background task
- Exposed URL processing callback to CampaignsCore

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
