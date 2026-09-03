# 03-09-2026

## 3.04.0

- `presentInboxViewController`, `pushInboxViewController` and `getInboxViewController` are now annotated `@MainActor`. Objective-C callers are unaffected; Swift callers not already on the main actor must now hop to it (e.g. `await MainActor.run { … }`). `MoEngageInboxEntry` now conforms to `MoEngageStorage.FileDataModel` instead of the deprecated `MoEngageDataModel`; its public `flushDuration` property is replaced by `flushNanoSeconds`. `MoEngageInboxEntry` read state (`isRead`, `clickedDate`, `receivedDate`, `sentTime`) is now immutable: entries returned by Inbox APIs are snapshots, and read-state updates are visible on the next fetch rather than by in-place mutation of previously returned objects.
- Completion blocks of all Inbox APIs are now invoked on the main thread. `getInboxViewController` now always invokes its completion — with `nil` when no SDK instance is registered for the given app ID.
- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. Resources (inbox storyboard and privacy manifest) now ship in a named `MoEngageInbox.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed" and copy `MoEngageInbox.bundle` from the release zip into the app bundle** — with "Do Not Embed" nothing is copied out of the framework, so without it the inbox UI fails to load and the privacy manifest is missing.

### Internal

- Inbox concurrency migration — module migrated to the actor model (`MoEngageModule.Item`, `Specification` + `State` storage, `MoEngageAction` dispatch, typed network location); replaced the deprecated `AnyMoEngageCodable` with `AnyMoEngagePrimitiveValue` in the inbox entry persistence (wire-format compatible)

# 22-07-2026

## 3.02.2

### Internal

- Removed deprecated `MoEngageDictionaryConvertible` protocol conformance
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core
- Fixed leading space in podspec version_file path

# 31-03-2026

## 3.02.1

### Internal

- Release for binary compatibility with core

# 29-01-2026

## 3.02.0

- Added support for SelfHandled Background Push.

### Internal

- Added automated extension integration setup
- Changed default value for inboxExtensionData to an empty array

# 19-01-2026

## 3.01.4

### Internal

- Binary compatibility changes
- push_opt_in_mode attribute value fix

# 29-10-2025

## 3.01.3

### Internal

- Removed older JWT authentication

# 13-10-2025

## 3.01.2

- Added automated version and changelog update
- Replaced the deprecated API to ensure iOS 13 compatibility
