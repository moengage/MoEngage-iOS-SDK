# 08-10-2026

## 1.0.0

- Added MoEngageRecommendations module
- The framework is statically linked into the host binary instead of being embedded as a dynamic framework. The privacy manifest ships in a named `MoEngageRecommendations.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed", copy `MoEngageRecommendations.bundle` from the release zip into the app bundle, and add `-ObjC` to Other Linker Flags** — with "Do Not Embed" nothing is copied out of the framework, so without it the privacy manifest is missing; without `-ObjC` the linker drops the module's runtime-resolved classes and the module never initialises.
