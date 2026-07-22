# 22-07-2026

## 11.00.0

### BREAKING CHANGE

- SDK throws Fatal Error in case of Public API before SDK Initialization
- The `MoEngage` initialization APIs now mark their `MoEngageSDKConfig` parameter as `sending` for Swift concurrency safety. Callers must transfer ownership of the config object and must not access or mutate it after passing it; under the Swift 6 language mode / strict concurrency, call sites that reuse the same `MoEngageSDKConfig` instance after initialization will need to be updated. Affected APIs:
  - `initializeDefaultTestInstance(_:)` and `initializeDefaultTestInstance(_:sdkState:)`
  - `initializeDefaultLiveInstance(_:)` and `initializeDefaultLiveInstance(_:sdkState:)`
  - `initializeTestInstance(_:)` and `initializeTestInstance(_:sdkState:)`
  - `initializeLiveInstance(_:)` and `initializeLiveInstance(_:sdkState:)`
- Public methods that previously returned `Void` now return a `MoEngageBaseTask` subclass. Direct calls and ObjC callers compile unchanged (`@discardableResult` covers ignored returns; ObjC selector encoding is return-type-agnostic). Function-reference assignments with an explicit `Void` return on the lvalue no longer type-match — `@discardableResult` does not propagate through function-typed assignments.

  Example (compile error → workaround):
  ```swift
  // Compile error after let initFn: (MoEngageSDKConfig) -> Void = MoEngage.sharedInstance.initializeDefaultLiveInstance

  // Workaround — wrap with an explicit closure:
  let initFn: (MoEngageSDKConfig) -> Void = { _ = MoEngage.sharedInstance.initializeDefaultLiveInstance($0) }
  ```

### Internal

- Release for binary compatibility with core

# 31-03-2026

## 10.01.4

### Internal

- Release for binary compatibility with core

# 29-01-2026

## 10.01.3

### Internal

- Added automated extension integration setup

# 19-01-2026

## 10.01.2

### Internal

- Binary compatibility changes

# 13-10-2025

## 10.01.1

- Added dependency to MoEngageCampaignsCore module.

# 15-07-2025

## 10.01.0

- Added automated version and changelog update
- Added support for file based initialization
