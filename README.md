# MoEngage-iOS-SDK
MoEngage iOS SDK

The best way to install is via Cocoapods. Add the following line to your podfile.

pod 'MoEngage-iOS-SDK'

pod install

To update, simply run pod update

For more information about the SDK and manual installation, go to the following link --> http://docs.moengage.com/en/latest/iOS.html

Change log:
v2.4
Supporting Nudges for testing inApp campaigns from push notification and added alerts on failure to show test inApps.
Bug fix : InApp can be shown along with Nudges now.
Bug fixes in inApp module to show inApp if handleInAppMessage called during fetching inApp from server.
Inbox module supports notification containing alert as dictionary.
Bug Fixes for Rich Landing from push notification.
Improved exception handling in the SDK, along with detailed logs on exceptions to help in debug.


v2.3.2
RichLanding content will be shown in SFSafariViewController for iOS9 and above.
We are now tracking change in Push Preference status event.
You can now test inApps through push notification.

v2.3.1
Bug Fixes for event tracking through inApps and saving data on failure to sync with server.

v2.3
We now have two separate methods for initializing the SDK with your App ID, this is for differentiating test devices which runs in DEBUG mode with production build in AppStore which runs in RELEASE mode. Refer the following link for more details : http://docs.moengage.com/docs/ios-app-delegate-changes 

v2.2
Notification can now have categories for action buttons - http://docs.moengage.com/docs/actionable-notifications
In-App fix for Navigation controller in a tab bar controller, where we had trouble finding what the top view controller on the stack was.
Deeplinking, Coupon Code and Rich landing page options for Notification actions, while creating a campaign. The SDK will handle them by default.

v2.1
Minor bug fix for data sync.

v2.0
This is a major release. It is recommeded to update to 2.0.
In-App V2 aka In-App Nativ is live. This SDK includes the next version of in-apps which are totally customisable. 
You will have to change the old callbacks for In-Apps. 
Some methods are removed. Please check the MoEngage.h file.
Install/Update events are now extended to creating Smart trigger pushes.
WebViewController is always presented now, along with a DONE button at the top to dismiss the controller.
Self Handled in-apps available now.

v1.9.5
IDFV can be nil if the device is restarted and not unlocked. While it's extremely rare, it can happen. Added a check for the same.

v1.9.4
iOS 7 crash while string match for Geofence fix.
If an attribute is set to nil, a log is printed, and the value is discarded.
Deprecated setLocationwithLat: lng: . Use setUserAttributeLocationLatitude: longitude: forKey: instead.
Better tracking of Push Preference for iOS8.

v1.9.3
Bug fix for events being lost sometimes if sync fails.
Inbox Storyboard fix for version type. The storyboard didn't open for some versions of Xcode.

v1.9.2
Now you can get nudges specific to a screen by using getNudgeViewForScreen;

v1.9.1
Inbox now has the ability to delete a message. Swipe the cell to delete.
Some Inbox messages coming blank bug fix.

v1.9
Now you can control MoEngage logs by using [MoEngage debug:YES/NO]; You can also set Log Levels and log everything, nothing or just the exceptions.
A new event is sent for when a user recieves a notifcation when his app is active.
Events done during the duration of resetUser were lost (1-2 secs). They won't be lost, but will be attributed to the new user now.
Nudge view has screenname in it's view layer now. [view.layer valueForKey:@"screenName"]; Using this, you can show nudges on specific screens.

v1.8.5
Ad Support Framework is weak linked. We will not collect IDFA by default.
Only if the framework is added, the IDFA will be collected by MoEngage.

v1.8.4
Warnings resulting from CLANG_ENABLE_MODULES have been fixed. 
Warnings resulting from GCC_PRECOMPILE_PREFIX_HEADER have been fixed. 
Apple is fixing the above issues soon. A bug has been filed with them.

v1.8.3
Duplicate symbols fix. In some cases, the SDK does not build and shows duplicate symbols.
NSLogs now work only for simulators and are disabled for devices.
PushTime fix, for swift compatibility as swift has issues with Casting.

v1.8.2
NSLogs are disabled in this release. The library is made in Release scheme.

v1.8.1
Location user attribute and event attribute support.

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
