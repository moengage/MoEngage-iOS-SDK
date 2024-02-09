# MoEngage-iOS-SDK
=================================

## Changelog:

### Version 9.15.2 *(9th February 2024)*
-------------------------------------------
* BugFix - Fixed network client leaking.

### Version 9.15.1 *(7th February 2024)*
-------------------------------------------
* BugFix - Fixed crash in decryption.
* BugFix - Fixed the unnecessary new line rendering in notification.

### Version 9.15.0 *(23rd January 2024)*
-------------------------------------------
* Added privacy manifest file
* Added Code signature support for XCFrameworks.

### Version 9.14.0 *(30th November 2023)*
-------------------------------------------
* Updated hashing algorithm usages to SHA256.
* BugFix - Handled removing of invalid value from array of user attribute and parsing the rest.
* BugFix - Fixed redirection URLs being percent encoded.
* BugFix - Bug fix for processing notifications action for Screen-Navigation from Inbox(Notification Center) is not behaving the same in SDK version 9.xx as it used to be in 7.xx series.

### Version 9.13.0 *(15th November 2023)*
-------------------------------------------
* Added notification impression and click API.
* Incorrect model_name tracked for iPhone 14 Pro
* Handled the register/unregister API response in consistent with Android.
* Added new registration state as `sdkOrAccountDisabled`. 
* Added self-handled inapps for tvOS.
* Added self-handled cards for tvOS.
* Cards in first app
* BugFix - User Registration state will be returned `userNotRegistered` if `unregister` API is called before user is registered.
* BugFix - Fixed the common logs issue
* BugFix - Fixed the clicked state for inbox message when the notification is clicked from terminate state
* BugFix - Refactored public APIs that can cause name collision.

### Version 9.12.0 *(26th September 2023)*
-------------------------------------------
* BugFix - Fixed `setImage` and `setGIF*` extension methods name collision.

### Version 9.11.3 *(19th September 2023)*
-------------------------------------------
* Internal Code optimizations.

### Version 9.11.2 *(14th September 2023)*
-------------------------------------------
* Updated the default Gzip state.

### Version 9.11.1 *(12th September 2023)*
-------------------------------------------
* Added delayed InApps support.

### Version 9.11.0 *(30th August 2023)*
-------------------------------------------
* Added Gzip support for API calls.
* Internal Code optimizations

### Version 9.10.2 *(16th August 2023)*
-------------------------------------------
* CrashFix - Fixed crash while serializing the JSON by removing invalid values on migration.

### Version 9.10.1 *(1st August 2023)*
-------------------------------------------
* Added SSL pinning support for network requests.

### Version 9.10.0 *(18th July 2023)*
-------------------------------------------
* Added DC-100 data center.
* BugFix - Handled duplicate tracking of Push-Preference.
* BugFix - Fixed API connection timeout. 
* iOS breakpoint issue fix by changing the config settings.

### Version 9.9.0 *(20th June 2023)*
-------------------------------------------
* iOS breakpoint issue fix by creating framework from Xcode 14.3.1.

### Version 9.8.2 *(31st May 2023)*
-------------------------------------------
* BugFix - Added integration details in Extension API call.

### Version 9.8.1 *(25th May 2023)*
-------------------------------------------
* Adding support to track primitive arrays in UserAttributes
* Additional Constructor with Data Center Support.

### Version 9.8.0 *(4th May 2023)*
-------------------------------------------
* Updated the deployment target to 11.0.
* Added support for API and Storage Encryption.
* Added MoEngageSecurity framework.

### Version 9.7.0 *(17th April 2023)*
-------------------------------------------
* Added DC-05 support.

### Version 9.6.0 *(11th April 2023)*
-------------------------------------------
* Added support to track `deviceType`.
* Internal Code optimizations

### Version 9.5.1 *(17th March 2023)*
-------------------------------------------
* BugFix - Handled the deeplink callback to `SceneDelegate` class.
* CrashFix - Fixed crash due to data race condition in core module.

### Version 9.5.0 *(22nd February 2023)*
-------------------------------------------
* Code optimization
* BugFix - Fixed the validation of blacklisted Unique ID.
* BugFix - Fixed the issue for parsing Loglevel.

### Version 9.4.1 *(7th February 2023)*
-------------------------------------------
* CrashFix - Fixed the crash when migrating from 8.2.0 to 9.x.x

### Version 9.4.0 *(6th February 2023)*
-------------------------------------------
* CrashFix - Fixed the crash by handling data race condition in Messaging module
* BugFix - Handled the logic to open url in external browser.
* Code optimization

### Version 9.3.0 *(25th January 2023)*
-------------------------------------------
* Support for `stopGeofenceMonitoring` API in Geofence module.

### Version 9.2.3 *(20th January, 2023)*
-------------------------------------------
* CrashFix - Fixed migration crash for session and source.

### Version 9.2.2 *(11th January, 2023)*
-------------------------------------------
* BugFix - Added DC-04 support.

### Version 9.2.1 *(03rd January, 2023)*
-------------------------------------------
* BugFix - Fixed the delay in deeplink callback for custom URL scheme. 
* CrashFix - Handled the crash when registering for remote notifications.

### Version 9.2.0 *(28th December, 2022)*
-------------------------------------------
* BugFix - Fixed Carousel image not displaying multiple images.
* CrashFix - Fixed the crash when migrating from 8.2.0 to 9.1.0.

### Version 9.1.0 *(13th December, 2022)*
-------------------------------------------
* BugFix - Handling the logic to discard RichLanding action if the url does not start with `http:` or `https:`.
* CrashFix - Carousel Image Order Mismatch in collapsed mode for rich notifications.

### Version 9.0.0 *(7th December, 2022)*
-------------------------------------------
* Migrated MoEngageSDK from Objective-C to Swift
* Removed other modules interface method from MoEngage class
* Removed optional modules from MoEngageSDK target.
* Updated `disableBadgeReset` method of `MoEngageSDKMessaging` to take Bool as its parameter.
* Added API documentation
* All the classes and modules are prefixed with `MoEngage`.
* Renamed `MOCore` to `MoEngageCore` for iphone SDK and TVOS SDK.
* BugFix - Badge is not getting reset when the disableBadgeReset is set as false.
* BugFix - Fixed test inapp api getting called multiple times on clicking the test inapp Pushnotification.

### Version 8.4.3 *(1st December, 2022)*
-------------------------------------------
* Added DC-04 support.

### Version 8.4.2 *(17th November, 2022)*
-------------------------------------------
* CrashFix - Updated Appdelegate swizzler to handle crash while registering for remote notifications.
* CrashFix - Handled removing of `infinity` or `NaN` from the payload on migration. 

### Version 8.4.1 *(09th November, 2022)*
-------------------------------------------
* CrashFix - Fixed Crash while passing `infinity` or `NaN` to SDK via user attributes and track event properties.
* BugFix - Added support to track userAttribute of type `Float`.

### Version 8.4.0 *(18th October, 2022)*
-------------------------------------------
* Added MoEngageSDK Initialization method with SDK State.
* Fixed handling of notification observers to avoid runtime crashes.
* Added exception handling to fix the crashes in a few scenarios.

### Version 8.3.1 *(22nd September, 2022)*
-------------------------------------------
* Added support for `setUserAttributeISODate` in the following ISO format `yyyy-MM-dd'T'HH:mm:ss.SSS'Z'`
* Added API `setDateOfBirthInISO` to track Date of birth in ISO format.
* Added API `MoESdkStateHelper.isSDKInitialized` to check if SDK is initialized.

### Version 8.3.0 *(20th July, 2022)*
-------------------------------------------
* Fixed multithreading issue in SDK, which led to crashes in few cases.
* Added API `MoESdkStateHelper.isSDKEnabled` to fetch current state of the SDK. 

### Version 8.2.1  *(22nd June, 2022)*
-------------------------------------------
* Fixed the lldb issue when integrating MoEngage-iOS-SDK to Swift application.

### Version 8.2.0  *(7th June, 2022)*
-------------------------------------------
* Updated the framework name from MoEngage to MoEngageSDK.
* RealTimeTrigger and Inbox feature is separated from MoEngageSDK. Hence these modules must be integrated explicitly.
* Deprecated existing UserAttribute methods.
* Provided Swift Package manager support to install the SDK

### Version 7.2.1  *(11th February, 2022)*
-------------------------------------------
* BugFix SUP-8691 - Handled notification registering in the main thread.

### Version 7.2.0  *(31st January, 2022)*
-------------------------------------------
* Added `Capacitor` integration type.

### Version 7.1.4  *(29th December, 2021)*
-------------------------------------------
* Assigned the SDK version to a constant , as in few instances App Version was getting tracked as SDK version.

### Version 7.1.3  *(1st December, 2021)*
-------------------------------------------
* Changed the implementation to determine SDK version, as in few instances App Version was getting tracked as SDK version.

### Version 7.1.2  *(29th October, 2021)*
-------------------------------------------
* Handled warning in MoEngageCore due to missing nullability type specifier

### Version 7.1.1  *(23rd September, 2021)*
-------------------------------------------
* Updated MORichNotification Dependency to `~>5.2.0`

### Version 7.1.0  *(27th August, 2021)*
-------------------------------------------
* Releasing module as XCFramework.
* HTML InApp Support Added.
* Delivery Funnel implementation for InApps.
* Handling of Control Group Error in InApps.
* Campaign Context tracking for inApp Stats.
* Added a method to detect App Launches due to MoEngage silent push notifications.

### Version 7.0.5  *(5th August, 2021)*
-------------------------------------------
* Image resource, deeplinks and richlanding URLs are percentage encoded if not already and then processed.

### Version 7.0.3  *(6th April, 2021)*
-------------------------------------------
* Fixed a multithreading issue in Analytics Module, which led to crashes in few cases.

### Version 7.0.2  *(25th February, 2021)*
-------------------------------------------
* Support for User Attribute Blacklisting with remote config.

### Version 7.0.1  *(9th February, 2021)*
-------------------------------------------
* Add `setDataCenter()` to configure the Data Center in the SDK.
* Reintroduced `setAppGroupID()` to configure AppGroup ID in the SDK.

### Version 7.0.0  *(18th January, 2021)*
-------------------------------------------
* MOSDKConfig class introduced to initialize the SDK.
* Remote Logger added for debugging.
* API Encryption option provided in the SDK
* SDK UserDefault keys saved in a separate suite and not in standard User Defaults
* SDK API Hosts are updated, configure the same by setting appropriate Data Center in MOSDKConfig.
* SDK to support iOS 10.0 and above, iOS 9.* support dropped
* Internal optimizations.

### Version 6.3.1  *(29th December, 2020)*
-------------------------------------------
* Weak linked AppTrackingTransparency framework.

### Version 6.3.0  *(17th December, 2020)*
-------------------------------------------
* Added  `enableSDK()` and `disableSDK()` methods for blocking/unblocking SDK features

### Version 6.2.5  *(30th November, 2020)*
-------------------------------------------
* Bugfix: One of the SDK background tasks while syncing the data was getting terminated prematurely.

### Version 6.2.4  *(24th November, 2020)*
-------------------------------------------
* Changes to support Cards 1.1.0(Cards class name updated to MoEngageCards)

### Version 6.2.3  *(12th November, 2020)*
-------------------------------------------
* Cards Module stats events whitelisted for GDPR opt-outs.

### Version 6.2.2  *(2nd November, 2020)*
-------------------------------------------
* Bugfix: Universal Links was taking user to Safari, instead of processing inside the app.
* Xcode 12 Build settings changes to exclude arm64 architecture for Simulator.

### Version 6.2.1  *(17th September, 2020)*
-------------------------------------------
* Added `notificationClickedWithScreenName:KVPairs:andPushPayload:` method to `MOMessagingDelegate` protocol.

### Version 6.2.0  *(6th September, 2020)*
-------------------------------------------
* Push Templates Support Added(Stylized Basic and Simple Image Carousel).
* Changes to support Inbox for multiple apps with same App Group ID.(with MORichNotification version 4.0.0)

### Version 6.1.1  *(5th July, 2020)*
-------------------------------------------
* Unity Integration tracking added.

### Version 6.1.0  *(2nd July, 2020)*
-------------------------------------------
* Support For [Cards Campaign](https://docs.moengage.com/docs/ios-cards) added
* BugFix: InApp exit animation was not being applied correctly.

### Version 6.0.3  *(18th May, 2020)*
-------------------------------------------
* BugFix: Universal Links were not considered for Source tracking in Analytics

### Version 6.0.2  *(28th March, 2020)*
-------------------------------------------
* Fixed Weak Linking of InApp and Geofence Frameworks.

### Version 6.0.1  *(18th March, 2020)*
-------------------------------------------
* Support for India cluster.

### Version 6.0.0  *(21st February, 2020)*
-------------------------------------------
* SDK Rearchitected and has been split into 5 modules now i.e, `MoEngageCore`, `MOAnalytics`, `MOMessaging`, `MOInApp` and `MoEngage`(Umbrella framework).
* InApp Module completely revamped, and has to be integrated separately now. Most of the APIs have changed, therefore refer to this [doc](https://docs.moengage.com/docs/in-app-nativ) to reintegrate the module to the project.
* Initialization Methods are deprecated, get info on the updated intialization method from [here](https://docs.moengage.com/docs/appdelegate-changes#section-initializing-moengage-sdk)
* `MOPayloadBuilder` is deprecated now, use `MOProperties` for tracking event attributes.
* Added new methods to track date event and user attributes using ISO date string.

### Version 5.2.6  *(16th December, 2019)*
-------------------------------------------
* Added a method to track UserAttribute by passing the date instance.

### Version 5.2.5  *(30th October, 2019)*
-------------------------------------------
* Event local time was getting tracked according to the Calendar and locale set in the device, have made it device setting independent now.

### Version 5.2.4  *(30th October, 2019)*
-------------------------------------------
* Event local time was getting tracked according to the Calendar and locale set in the device, have made it device setting independent now.

### Version 5.2.3  *(23rd October, 2019)*
-------------------------------------------
* Fixed a crash which was occuring sometimes while trying to persist the tracked user attributes in SDK.

### Version 5.2.2  *(22nd October, 2019)*
-------------------------------------------
* Session and Source Tracking will be enabled by default.

### Version 5.2.0  *(14th October, 2019)*
-------------------------------------------
* BugFix: Notification Clicked was not getting tracked when app was in terminated state with AppDelegate Proxy enabled.
* BugFix: There was a bug related to computation of session endtime which is fixed now.

### Version 5.1.0  *(1st October, 2019)*
-------------------------------------------
* BugFix: Session start time was not tracked in correct format, its been fixed.

### Version 5.0.3  *(5th September, 2019)*
-------------------------------------------
* Added a Main thread check for processing of  launchOptions and configuring of AppDelegate Proxy.

### Version 5.0.2  *(30th August, 2019)*
-------------------------------------------
* BugFix: Show Only in Screen in InApp was always failing, its been fixed. 
* Fixed a memory leak identified in the SDK.

### Version 5.0.1  *(9th August, 2019)*
-------------------------------------------
* BugFix: Session start time is tracked in GMT timezone instead of device time zone.

### Version 5.0.0  *(25th July, 2019)*
-------------------------------------------
* Session and Source tracking is possible in the SDK.
* AppDelegate Swizzling implemented to ease the integration of PushNotification. It can be disabled by setting the `MoEngageAppDelegateProxyEnabled` key to `NO` in your `Info.plist` file.
* Removed support for previously deprecated methods.

### Version 4.4.0  *(4th January, 2019)*
-------------------------------------------
* Inbox module revamp where few of the existing APIs are deprecated for new APIs and now notifcations are synced from Notification Service Extension using MORichNotification aswell instead of just relying on the Network API Sync.
* Internal changes to make the SDK API calls more secure.

### Version 4.3.2  *(16th November, 2018)*
-------------------------------------------
* Fixed a crash in periodic sync module of the SDK, which used to occur due to a deadlock while initiating the timer for periodic sync.

### Version 4.3.0  *(10th October, 2018)*
-------------------------------------------
* Geofence Module Separated from the Core SDK. Refer to the [docs](https://docs.moengage.com/docs/geofences) for more info.

### Version 4.2.4  *(4th October, 2018)*
-------------------------------------------
* Bug Fix: Universal links when sent as deep links were not working.

### Version 4.2.3  *(13th August, 2018)*
-------------------------------------------
* Real-time Trigger Campaigns Bug Fix : Wrong push notification payload was posted in offline scenarios where event personalization was used.

### Version 4.2.2  *(26th July, 2018)*
-------------------------------------------
* Delegate method `inboxCellSelectedWithPushDict:`  provided for getting Push Notification Payload on clicking notification in SDK inbox.
* Now for processing inbox notifications clicks the same way as push notification clicks set `shouldProcessNotificationActions` of MOInboxViewController instance to `true`.

### Version 4.2.1  *(10th July, 2018)*
-------------------------------------------
* Network request and response caching in Cache.db disabled.

### Version 4.2.0  *(22nd June, 2018)*
-------------------------------------------
* Changed routes of sync API calls in SDK.

### Version 4.1.1  *(12th June, 2018)*
-------------------------------------------
* App Exit Event being tracked for using Real-time triggers when app goes to background.
* Real-Time triggers can now also be triggered by events being tracked when app is in background state.

### Version 4.1.0  *(24th May, 2018)*
-------------------------------------------
* SDK changes to make it GDPR compliant. We have provided opt-out methods for event tracking, push notifications and inApp Notifications in this release.
* Provided `resetUserWithCompletionBlock:` and `flushWithCompletionBlock:` methods to provide callbacks once the request is processed.

### Version 4.0.0  *(23rd April, 2018)*
-------------------------------------------
* SDK was changed to dynamic framework
* Support for [Real-Time Triggers](https://docs.moengage.com/v1.0/docs/real-time-triggers) added

### Version 3.9.2  *(14th March, 2018)*
-------------------------------------------
* Issue fixed where sometimes SDK was crashing due to calling sync in multiple threads.
* Provided a method to manually dismiss RichLanding Webview Controller(SFSafariController for iOS9+) :  `dismissRichLandingWebViewControllerWithAnimation:`

### Version 3.9.1  *(23rd February, 2018)*
-------------------------------------------
* Bug Fix for issue where a black tint view was added on viewcontroller in case of self-handled Smart Trigger InApp.

### Version 3.9.0  *(1st February, 2018)*
-------------------------------------------
* Conditional Action supported in inApp for rating template.
* Periodic Flush of events introduced in the SDK.
* Tracking of Device Model implemented.

### Version 3.8.1  *(26th December, 2017)*
-------------------------------------------
* Fixed an issue where in some cases calling *resetUser* simultaneously with *syncNow* was causing a crash.

### Version 3.8.0  *(22nd November, 2017)*
-------------------------------------------
* Provided  `setAlias:`  method to update `USER_ATTRIBUTE_UNIQUE_ID` - [link](https://docs.moengage.com/v1.0/docs/tracking-user-attributes#section-updating-user-attribute-unique-id)
* Now if the `USER_ATTRIBUTE_UNIQUE_ID` is updated using `setUserUniqueID:` with a new value, will reset the current user and lead to creation of unintended users in our system.

### Version 3.7.3  *(13th November, 2017)*
-------------------------------------------
* Provided a method to redirect data to EU servers using `redirectDataToRegion:`. - [link](https://docs.moengage.com/v1.0/docs/data-redirection)

### Version 3.7.2  *(2nd November, 2017)*
-------------------------------------------
* Provided a method to track inbox notification clicks.
* Removed the check of Show Only In Screen for Test InApp Campaigns.

### Version 3.7.1  *(1st November, 2017)*
-------------------------------------------
* Provided methods to mark a inbox notification as read.
* Added additional debug logs to debug inApp issues.

### Version 3.7.0  *(27th September, 2017)*
-------------------------------------------
* SDK supports blacklisting of events to be tracked in the app.

### Version 3.6.0  *(6th September, 2017)*
-------------------------------------------
* Inbox messages will have an expiry value, based on which it will be deleted from User Inbox. By default the value will be set to 30 days.
* Locale tracking won't be done by default in the SDK, instead trackLocale: method has to be called to track user locale settings.(https://docs.moengage.com/v1.0/docs/tracking-user-attributes#section-tracking-user-locale)

### Version 3.5.0  *(17th August, 2017)*
-------------------------------------------
* Optimized SDK Network calls.
* Fixed issues with locale tracking in iOS ### Versions below iOS10.

### Version 3.4.3  *(3rd August, 2017)*
-------------------------------------------
* Fixed an issue with opening of Deeplinks when app in foreground.
* Fixed a crash in Self-handled InApp

### Version 3.4.1  *(12th July, 2017)*
-------------------------------------------
* Provided method to delete all the messages from Inbox
* Fixed an issue in Logger class of the SDK.


### Version 3.4.0  *(1st June, 2017)*
-------------------------------------------
* Started tracking locale of device
* Started showing reason for failure of displaying inApp in an alert, in case of test inApp from push
* Fixed a bug where test inApp feature for Self-Handled inApp wasn't getting displayed.
* Dictionary returned for self-handled inApp contain's additional parameters now i.e,expiretime, maxTimes, interval, * autoDismissInterval, persistent


### Version 3.3.0  *(17th February, 2017)*
-------------------------------------------
* App Lifecycle methods which were earlier called from App Delegate are deprecated now, SDK is internally handling these methods.
* Optimization in syncing of tracked events.
* Separate methods are provided now to set default User Attributes. eg: EmailID, User Name etc.

### Version 3.2.2  *(9th January, 2017)*
-------------------------------------------
* Fixed a bug where SDK was not able to find MOInbox.storyboard while using MoEngage-iOS-SDK as framework(by defining use_framework! in pod file)
* InApp changes to handle Notification Permission/Setting Permission Actions more efficiently.

### Version 3.2.0  *(24th November, 2016)*
-------------------------------------------
* Enabled tracking of push delivery using Notification Extension and AppGroups - http://docs.moengage.com/docs/push-delivery-tracking
* Enabled Test InApp from push when push is received in foreground.
* Check in SDK to prevent getting multiple UPDATE events.
* Inbox module changes to get media-attachment sent in case of iOS Rich Notifications.

### Version 3.1.0  *(24th October, 2016)*
-------------------------------------------
* Fixed a bug where InApp was shown even when the keyboard was over the screen.
* Improved logging mechanism, which will help in debugging any issue which arises.

### Version 3.0.0  *(4th October, 2016)*
-------------------------------------------
* Supports iOS10 changes for Notifications - http://docs.moengage.com/docs/ios-10-rich-notifications
* Makes use of UserNotifications framework for iOS10.
* Registration for push is handled in SDK now.

### Version 2.4  *(5th September, 2016)*
-------------------------------------------
* Supporting Nudges for testing inApp campaigns from push notification and added alerts on failure to show test inApps.
* Bug fix : InApp can be shown along with Nudges now.
* Bug fixes in inApp module to show inApp if handleInAppMessage called during fetching inApp from server.
* Inbox module supports notification containing alert as dictionary.
* Bug Fixes for Rich Landing from push notification.
* Improved exception handling in the SDK, along with detailed logs on exceptions to help in debug.


### Version 2.3.2  *(18th August, 2016)*
-------------------------------------------
* RichLanding content will be shown in SFSafariViewController for iOS9 and above.
* We are now tracking change in Push Preference status event.
* You can now test inApps through push notification.

### Version 2.3.1  *(30th June, 2016)*
-------------------------------------------
* Bug Fixes for event tracking through inApps and saving data on failure to sync with server.

### Version 2.3  *(10th June, 2016)*
-------------------------------------------

* We now have two separate methods for initializing the SDK with your App ID, this is for differentiating test devices which runs in DEBUG mode with production build in AppStore which runs in RELEASE mode. Refer the following link for more details : http://docs.moengage.com/docs/appdelegate-changes#section-initializing-moengage-sdk

### Version 2.2  *(16th May, 2016)*
-------------------------------------------
* Notification can now have categories for action buttons - http://docs.moengage.com/docs/actionable-notifications
* In-App fix for Navigation controller in a tab bar controller, where we had trouble finding what the top view controller on the stack was.
* Deeplinking, Coupon Code and Rich landing page options for Notification actions, while creating a campaign. The SDK will handle them by default.

### Version 2.1  *(30th March, 2016)*
-------------------------------------------
* Minor bug fix for data sync.

### Version 2.0  *(14th March, 2016)*
-------------------------------------------
* This is a major release. It is recommeded to update to 2.0.
* In-App V2 aka In-App Nativ is live. This SDK includes the next ### Version of in-apps which are totally customisable.
* You will have to change the old callbacks for In-Apps.
* Some methods are removed. Please check the MoEngage.h file.
* Install/Update events are now extended to creating Smart trigger pushes.
* WebViewController is always presented now, along with a DONE button at the top to dismiss the controller.
* Self Handled in-apps available now.

### Version 1.9.5  *(7th March, 2016)*
-------------------------------------------
* IDFV can be nil if the device is restarted and not unlocked. While it's extremely rare, it can happen. Added a check for the same.

### Version 1.9.4  *(29th February, 2016)*
-------------------------------------------
* iOS 7 crash while string match for Geofence fix.
* If an attribute is set to nil, a log is printed, and the value is discarded.
* Deprecated setLocationwithLat: lng: . Use setUserAttributeLocationLatitude: longitude: forKey: instead.
* Better tracking of Push Preference for iOS8.

### Version 1.9.3  *(29th January, 2016)*
-------------------------------------------
* Bug fix for events being lost sometimes if sync fails.
* Inbox Storyboard fix for ### Version type. The storyboard didn't open for some ### Versions of Xcode.

### Version 1.9.2  *(13th January, 2016)*
-------------------------------------------
* Now you can get nudges specific to a screen by using getNudgeViewForScreen;

### Version 1.9.1  *(6th January, 2016)*
-------------------------------------------
* Inbox now has the ability to delete a message. Swipe the cell to delete.
* Some Inbox messages coming blank bug fix.

### Version 1.9  *(22nd December, 2015)*
-------------------------------------------
* Now you can control MoEngage logs by using [MoEngage debug:YES/NO]; You can also set Log Levels and log everything, nothing or just the exceptions.
* A new event is sent for when a user recieves a notifcation when his app is active.
* Events done during the duration of resetUser were lost (1-2 secs). They won't be lost, but will be attributed to the new user now.
* * Nudge view has screenname in it's view layer now. [view.layer valueForKey:@"screenName"]; Using this, you can show nudges on specific screens.

### Version 1.8.5  *(16th November, 2015)*
-------------------------------------------
* Ad Support Framework is weak linked. We will not collect IDFA by default.
* Only if the framework is added, the IDFA will be collected by MoEngage.

### Version 1.8.4  *(28th October, 2015)*
-------------------------------------------
* Warnings resulting from CLANG_ENABLE_MODULES have been fixed.
* Warnings resulting from GCC_PRECOMPILE_PREFIX_HEADER have been fixed.
* Apple is fixing the above issues soon. A bug has been filed with them.

### Version 1.8.3  *(22nd October, 2015)*
-------------------------------------------
* Duplicate symbols fix. In some cases, the SDK does not build and shows duplicate symbols.
* NSLogs now work only for simulators and are disabled for devices.
* PushTime fix, for swift compatibility as swift has issues with Casting.

### Version 1.8.1/1.8.2  *(13th October, 2015)*
-------------------------------------------
* Location user attribute and event attribute support.
* NSLogs are disabled in this release. The library is made in Release scheme.

### Version 1.8  *(28th September, 2015)*
-------------------------------------------
* Includes bitcode support for iOS9 and Xcode7. This will not work with Xcode6, since it does not have bitcode support.
* A data sync issue fix where user goes to background and within a second terminates the app. The data was being sent twice. (happened rarely)
* Geofencing now has a completion handler to notfiy which regions are being tracked, and allowing you to manipulate them.
* MoEngage.bundle Xcode 7 incompatibility issues fixed.

### Version 1.7  *(19th August, 2015)*
-------------------------------------------
* New attribute location. This can be set as a user as well as event attribute.
* Inbox is available as a custom component. You can modify it as per your need.
* Nudge bug fix. If multiple nudges are created, and the first one will be expired, the active one will be shown.
* Delay for in-app after a push message is removed.
* New callback for userNotification types.

### Version 1.6  *(15th July, 2015)*
-------------------------------------------
* Now you can use Geofencing.
* In-app experience improved as in-app images are now cached.

### Version 1.5  *(30th June, 2015)*
-------------------------------------------
* Added method for INSTALL and UPDATE. Now you can send us the info for INSTALL and UPDATE of the app and manage campaigns accordingly.
* iOS6 support for event tracking.

### Version 1.4.3  *(27th May, 2015)*
-------------------------------------------
* Critical bug fix for Apple SDK not recognising NSFoundation### VersionNumber_iOS_7_0.

### Version 1.4.1  *(8th May, 2015)*
-------------------------------------------
* Crash handling for NSData and NSUrl data types.
* In-app support for iPad.

### Version 1.4  *(16th April, 2015)*
-------------------------------------------
* New Feature - Nudges
* Improvements in data storage if internet not available of sync fails
* Reset User - You can use this to create a new user with the existing app. One of the ideal scenarios is when a user logs out of the app, and possibly logs in with another account.

