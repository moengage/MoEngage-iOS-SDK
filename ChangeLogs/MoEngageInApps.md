# 02-09-2026

## 8.01.0

- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. Resources (XIBs, asset catalog, default close-button image and privacy manifest) now ship in a named `MoEngageInApps.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed" and copy `MoEngageInApps.bundle` from the release zip into the app bundle** — with "Do Not Embed" nothing is copied out of the framework, so without it images and XIBs fail to load and the privacy manifest is missing.

### Internal

- Added AccessibilityIdentifier to InAppPrimaryContainer for UI Automation
- Fixed actor-isolation violations detected by `MoEngageSerialExecutor` telemetry in in-app display, impression tracking, primary-click persistence, button-action handling, nudge/pop-up auto-dismiss tracking, and HTML/video asset downloading — these paths now hop onto the `MoEngageSDKInstance` actor via `MoEngageAction` before reading `sdkConfig` or writing `MoEngageModuleState`, instead of touching isolated state from the main thread or an off-actor download task.

# 22-07-2026

## 8.00.0

### BugFix

- Fixed bottom-positioned non-intrusive nudges with height-from-content templates (e.g. image-only) rendering pushed above the screen with an unreachable close button when the content exceeded the available height; the nudge height is now clamped to the visible area (nav/tab-bar aware), the bottom anchor is recomputed from the final height, and clipped content scrolls.

### Breaking changes

- Public ObjC enums `MoEngageInAppActionType` and `MoEngageNudgePosition` migrated to Swift `@objc` enums. This is a **breaking change** — enum case names have been updated to Swift convention.

  **`MoEngageInAppActionType` migration:**

  | | Swift (before) | Swift (after) | Objective-C (before) | Objective-C (after) |
  |---|---|---|---|---|
  | Navigation action | `NavigationAction` | `.navigationAction` | `NavigationAction` | `MoEngageInAppActionTypeNavigationAction` |
  | Custom action | `CustomAction` | `.customAction` | `CustomAction` | `MoEngageInAppActionTypeCustomAction` |

  **`MoEngageNudgePosition` migration:**

  | | Swift (before) | Swift (after) | Objective-C (before) | Objective-C (after) |
  |---|---|---|---|---|
  | Top | `NudgePositionTop` | `.top` | `NudgePositionTop` | `MoEngageNudgePositionTop` |
  | Bottom | `NudgePositionBottom` | `.bottom` | `NudgePositionBottom` | `MoEngageNudgePositionBottom` |
  | Bottom-left | `NudgePositionBottomLeft` | `.bottomLeft` | `NudgePositionBottomLeft` | `MoEngageNudgePositionBottomLeft` |
  | Bottom-right | `NudgePositionBottomRight` | `.bottomRight` | `NudgePositionBottomRight` | `MoEngageNudgePositionBottomRight` |
  | Any | `NudgePositionAny` | `.any` | `NudgePositionAny` | `MoEngageNudgePositionAny` |
  | None | `NudgePositionNone` | `.none` | `NudgePositionNone` | `MoEngageNudgePositionNone` |

- Public methods that previously returned `Void` now return a `MoEngageBaseTask` subclass. Direct calls and ObjC callers compile unchanged (`@discardableResult` covers ignored returns; ObjC selector encoding is return-type-agnostic). Function-reference assignments with an explicit `Void` return on the lvalue no longer type-match — `@discardableResult` does not propagate through function-typed assignments.

  Example (compile error → workaround):
  ```swift
  // Compile error after let showFn: () -> Void = MoEngageSDKInApp.sharedInstance.showInApp

  // Workaround — wrap with an explicit closure:
  let showFn: () -> Void = { _ = MoEngageSDKInApp.sharedInstance.showInApp() }
  ```

### Internal

- Fixed HTML non-intrusive in-app rendering cropped after an orientation change by loading the web content on-window so it lays out at the correct bounds and reflows on rotation
- Adopted Gif and campaigns utils from `MoEngageCampaignsCore` and replaced deprecated `MoEngageCoreUtils` and `MoEngagePlatformInfo` API usage
- Migrated MoEngageSDKInApp public APIs to typed-task returns via `@discardableResult`. `showInApp` / `showNudge` typed tasks resolve AFTER visible render (via the `inAppShown` delegate path); render-side failures and pre-attach guards reject the task instead of hanging. `getSelfHandledInApp(s)` ships a deprecation on the completion-block variants. Promoted `MoEngageInAppType` to public. Config-shape APIs (`setCurrentInAppContexts`, `invalidateInAppContexts`, `blockInApp`, `disableInApps`) return `Void`. MoEngageInAppRequestFailureReason is the InApps-specific failure-reason class — customers downcast to read InApp-specific moduleCode + campaignId. selfHandledShown / selfHandledClicked / selfHandledDismissed also migrated to typed-task returns.
- Added concurrency safe storage and network APIs
- Release for binary compatibility with core
- Fixed nudge visibility check to scope by current screen, so nudges on a previous screen no longer block the same campaign from showing on the current screen. Screen identity is determined by view controller instance comparison. **Limitation:** SwiftUI apps using `NavigationStack` are not supported — UIKit's view hierarchy always returns the same `UIHostingController` regardless of the visible SwiftUI screen, so screen changes within a SwiftUI navigation stack are not detected.

# 29-06-2026

## 7.06.0

- InAppConstants coversion to swift
- InAppUtils migrated to swift 
- Updated In-App copy action alert title string (MoEngageInAppConstants.coupon) to Coupon copied!.
- Fixed Bottom nudge showing alongside BottomLeft/BottomRight nudges by treating them as mutually exclusive in the position suppression gate.
- Push to InApp: Introduced DisplayGate which dismisses any low priority inapps to make way for higher priority one.
- Fixed animated GIF in-app media rendering as a static image when the media URL does not end in `.gif` (e.g. `.gifv`); GIF detection now inspects the asset's content instead of the URL extension.
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
