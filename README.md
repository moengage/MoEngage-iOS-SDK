# MoEngage-iOS-SDK
MoEngage iOS SDK

The best way to install is via Cocoapods. Add the following line to your podfile.

pod 'MoEngage-iOS-SDK'

pod install

To update, simply run pod update

For more information about the SDK and manual installation, go to the following link --> http://docs.moengage.com/en/latest/iOS.html

Change log:

v1.8
Includes bitcode support for iOS9 and Xcode7. This will not work with Xcode6, since it does not have bitcode support.
A data sync issue fix where user goes to background and within a second terminates the app. The data was being sent twice. (happened rarely)
Geofencing now has a completion handler to notfiy which regions are being tracked, and allowing you to manipulate them.
MoEngage.bundle Xcode 7 incompatibility issues fixed.

v1.7
New attribute location. This can be set as a user as well as event attribute.
Inbox is available as a custom component. You can modify it as per your need.
Nudge bug fix. If multiple nudges are created, and the first one will be expired, the active one will be shown. 
Delay for in-app after a push message is removed.
New callback for userNotification types.

v1.6
Now you can use Geofencing.
In-app experience improved as in-app images are now cached.

v1.5
Added method for INSTALL and UPDATE. Now you can send us the info for INSTALL and UPDATE of the app and manage campaigns accordingly.
iOS6 support for event tracking.

v1.4.3
Critical bug fix for Apple SDK not recognising NSFoundationVersionNumber_iOS_7_0.

v1.4.1
1.Crash handling for NSData and NSUrl data types.
2. In-app support for iPad.
