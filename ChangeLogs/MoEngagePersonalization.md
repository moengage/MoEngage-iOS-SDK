# 02-09-2026

## 1.3.0

- The framework is now statically linked into the host binary instead of being embedded as a dynamic framework. The privacy manifest now ships in a named `MoEngagePersonalization.bundle` instead of being copied flat. CocoaPods and Swift Package Manager integrations need no change. **Manual xcframework integrations must set this framework to "Do Not Embed" and copy `MoEngagePersonalization.bundle` from the release zip into the app bundle** — with "Do Not Embed" nothing is copied out of the framework, so without it the privacy manifest is missing.

# 22-07-2026

## 1.2.1

### Internal

- Added concurrency safe storage and network APIs
- Release for binary compatibility with core

# 29-06-2026

## 1.2.0

- Personalize experience cache is now custom-attribute aware — changed custom attributes for an experience key trigger a fresh fetch and overwrite the cached entry, instead of serving stale content.

### Internal

- Added .gitignore to exclude generated version constants file

# 30-04-2026

## 1.1.0

- Updated personalize offerings and public api

# 15-04-2026

## 1.0.0

- Added Personalize module and feature

