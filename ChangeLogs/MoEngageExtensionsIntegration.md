# 18-11-2026

## 1.0.4

### Internal

- The notification service extension now looks up `MoEngageRichNotificationModule` by name and hands it the request as `SharedEvent.extension(.didReceiveNotificationRequest)`, instead of calling the removed RichNotification manager (RichNotification stays weak-linked and is not imported). Falls back to Messaging when RichNotification is absent or doesn't handle the request.

# 22-07-2026

## 1.0.3

### Internal

- Release for binary compatibility with core

# 29-06-2026

## 1.0.2

### Internal

- Fixed CI failure in Test Extensions Integration by pinning swift-argument-parser to 1.3.0 to avoid async API changes in newer versions.

# 31-03-2026

## 1.0.1

### Internal

- Release for binary compatibility with core
- Added adoption tracking for integrated extensions
- Added additional keychain group pattrns support

# 29-01-2026

## 1.0.0

- Added extensions for:
  - tracking push notification impressions
  - creating push notification with rich media content
  - creating push notification from custom templates
