# 02-09-2026

## 1.1.4

### Internal

- Fixed an actor-isolation violation where the push-to-start token observation task read `MoEngageSDKInstance`-isolated in-memory storage off-actor; the observation loop now captures the token stream while isolated and hops onto each instance actor via `MoEngageAction` before updating module state.

# 22-07-2026

## 1.1.3

### Internal

- Added concurrency safe storage and network APIs
- Release for binary compatibility with core
- Fixed leading space in podspec version_file path

# 31-03-2026

## 1.1.2

### Internal

- Release for binary compatibility with core

# 29-01-2026

## 1.1.1

### Internal

- Added automated extension integration setup

# 19-01-2026

## 1.1.0

- Added support for transactional live activity

### Internal

- Binary compatibility changes

# 15-07-2025

## 1.0.2

- Added automated version and changelog update
- Added support for file based initialization
