//
//  MoEngage.h
//  MoEngage
//
//  Created by Chengappa C D on 20/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#if __has_include(<CoreLocation/CoreLocation.h>)
#import <CoreLocation/CoreLocation.h>
#endif

#if __has_include(<UserNotifications/UserNotifications.h>)
#import <UserNotifications/UserNotifications.h>
#endif

//! Project version number for MoEngage.
FOUNDATION_EXPORT double MoEngageVersionNumber;

//! Project version string for MoEngage.
FOUNDATION_EXPORT const unsigned char MoEngageVersionString[];

#import <MoEngage/MOPayloadBuilder.h>
#import <MoEngage/MOEHelperConstants.h>
#import <MoEngage/MONotificationCategory.h>

#import <MoEngage/MOLogger.h>
#import <MoEngage/MOUtils.h>
#import <MoEngage/MODateUtils.h>
#import <MoEngage/MOConfigManager.h>
#import <MoEngage/MONetworkInterface.h>
#import <MoEngage/NSDictionary+MOExtension.h>
#import <MoEngage/NSMutableDictionary+MOExtension.h>

#import <MoEngage/MOInbox.h>
#import <MoEngage/MOInboxExposedConstants.h>
#import <MoEngage/MOInboxModel.h>
#import <MoEngage/MOInboxViewController.h>
#import <MoEngage/MOInboxTableViewCell.h>


typedef void(^NudgeCreationCompletionBlock)(UIView * _Nullable nudgeView, NSString* _Nullable campaignID);

/**
 Enumerator to define where to place nudge inApp in the screen
 */
typedef enum {
    NudgeTop,
    NudgeBottom
}NudgePosition;

/**
 Enumerator to differentiate between INSTALL/UPDATE (Existing user or not)
 */
typedef enum _AppStatus{
    INSTALL,
    UPDATE
}AppStatus;

/**
 Enumerator which gives which widget in an InApp was clicked in an inApp
 */
typedef enum _InAppWidget{
    CLOSE_BUTTON,
    BUTTON,
    IMAGE,
    LABEL
}InAppWidget;

/**
 Enumerator which defines possible value for Gender user attribute for a user
 */
typedef enum UserGender{
    MALE,
    FEMALE
}UserGender;

#pragma mark - In App Protocol
/**
 Conform to this protocol if you want to handle the action of the in-app messages' button clicks.
 */
@protocol MOInAppDelegate <NSObject>
@optional

/**
 This method is called when the inApp is shown.
 @param campaignID - Campaign ID of InApp shown.
 */
-(void)inAppShownWithCampaignID:(NSString*_Nullable)campaignID;

/**
 This method is called when the user clicks on a widget in the in-app message. Conform to MoInAppDelegate to use this callback method.
 @param screenName - Used in DeepLinking, gives the screen name to navigate.
 @param dataDict - The key value data dictionary associated with the widget tapped.
 */
-(void)inAppClickedForWidget:(InAppWidget)widget screenName:(NSString*_Nullable)screenName andDataDict:(NSDictionary *_Nullable)dataDict;

/**
 This method is called when an event triggers an in-app from the server, which is of type self handled.
 @param data - The data mentioned on the dashboard while creating the in-app is passed onto you
 */
-(void)eventTriggeredInAppAvailableWithData:(id _Nullable )data;

@end

@interface MoEngage : NSObject

#pragma mark - Properties
/**
 Set this delegate to get callbacks on whenever a inApp campaign is shown or clicked by the user
 */
@property(nonatomic, weak) id <MOInAppDelegate>delegate;

/**
 Set this property to YES if you don't wish to use the Inbox / Notification center feature
 */
@property(nonatomic, assign) BOOL      disableInbox;

/**
 Set this property to YES if you don't use in app messaging.
 */
@property(nonatomic, assign) BOOL      disableInApps;

/**
 Set the property to YES if you don't want MoEngage to reset bagde no. on app open
 */
@property(nonatomic, assign) BOOL      disableBadgeReset;

#pragma mark - Shared instance

+(instancetype _Nonnull )sharedInstance;

#pragma mark - Initialization Methods

/**
 Call this method in the AppDelegate in application:didFinishLaunchingWithOptions: to initialize the SDK for dev build
 @param apiKey The unique apiKey provided for your app
 @param application The application instance
 @param launchOptions The launch options dictionary
 @param openUrl This tells us whether the deeplink should be handled or not, which means whether we call handleOpenUrl or you do it yourself.
 @warning Make sure initializeProdWithApiKey:inApplication:withLaunchOptions:openDeeplinkUrlAutomatically: method is also implemented, refer this link for more details: [Initializing MoEngage SDK](https://docs.moengage.com/docs/appdelegate-changes#section-initializing-moengage-sdk)
 */
-(void)initializeDevWithApiKey:(NSString *_Nonnull)apiKey inApplication:(UIApplication *_Nullable)application withLaunchOptions:(NSDictionary *_Nullable)launchOptions openDeeplinkUrlAutomatically:(BOOL)openUrl;

/**
 Call this method in the AppDelegate in application:didFinishLaunchingWithOptions: to initialize the SDK for production build
 @param apiKey The unique apiKey provided for your app
 @param application The application instance
 @param launchOptions The launch options dictionary
 @param openUrl This tells us whether the deeplink should be handled or not, which means whether we call handleOpenUrl or you do it yourself.
 @warning Make sure initializeProdWithApiKey:inApplication:withLaunchOptions:openDeeplinkUrlAutomatically: method is also implemented, refer this link for more details: [Initializing MoEngage SDK](https://docs.moengage.com/docs/appdelegate-changes#section-initializing-moengage-sdk)
 */
-(void)initializeProdWithApiKey:(NSString *_Nonnull)apiKey inApplication:(UIApplication *_Nullable)application withLaunchOptions:(NSDictionary *_Nullable)launchOptions openDeeplinkUrlAutomatically:(BOOL)openUrl;

#pragma mark- Opt Out methods

/**
 Method to opt out of the data tracking for a particular user
 @param isOptedOut Bool value to indicate if the data tracking is to be opted out
 @version 4.1.0 and above
 */
-(void)optOutOfDataTracking:(BOOL)isOptedOut;

/**
 Method to opt out of push for a particular user
 @param isPushOptedOut Bool value to indicate if the push is to be opted out
 @version 4.1.0 and above
 */
-(void)optOutOfMoEngagePushNotification:(BOOL)isPushOptedOut;

/**
 Method to opt out of the data tracking for a particular user
 @param isInAppOptedOut Bool value to indicate if the data tracking is to be opted out
 @version 4.1.0 and above
 */
-(void)optOutOfInAppCampaign:(BOOL)isInAppOptedOut;


#pragma mark - Push Notifications

/**
 Method to register your app for push notification with APNS for iOS10 and above.
 @param categories to set categories for supporting Notification Actions (iOS10 and above)
 @param delegate to set the delegate for UNUserNotificationCenter.
 @version 4.0.0 and above
 */
-(void)registerForRemoteNotificationWithCategories:(NSSet<UNNotificationCategory*>* _Nullable)categories withUserNotificationCenterDelegate:(id _Nullable )delegate API_AVAILABLE(ios(10.0));

/**
 Method to register your app for push notification with APNS for iOS versions below iOS10.
 @param categoriesForPreviousOS to set categories for supporting Notification Actions in iOS8 and iOS9 (This should be a set of MONotificationCategory objects)
 @version 4.0.0 and above
 */
-(void)registerForRemoteNotificationForBelowiOS10WithCategories:(NSSet<MONotificationCategory*>*_Nullable)categoriesForPreviousOS API_DEPRECATED("This method is for iOS version below iOS 10.0", ios(8.0, 9.3.5));

/**
 * Method to send notification categories to SDK to support Notification Action in iOS10 and above
 */
-(void)setUserNotificationCategories:(NSSet<UNNotificationCategory*>*_Nullable)categories API_AVAILABLE(ios(10.0));


/**
 * Method to send notification categories to SDK to support Notification Action in iOS8 and iOS9
 */
-(void)setNotificationCategoriesForEarlieriOSVersionsWithCategories:(NSSet<MONotificationCategory*>*_Nullable)categories API_DEPRECATED("This method is for iOS version below iOS 10.0", ios(8.0, 9.3.5));


/**
 Use this method to pass the device token/push token generated by APNS for your app to MoEngage SDK which can be later used for sending push notification to your app users.
 
 Call this method in AppDelegate in application:didRegisterForRemoteNotificationsWithDeviceToken:.
 @param deviceToken The token of the device for push notifications
 */
-(void)setPushToken:(NSData *_Nullable)deviceToken;


/**
 Call this method in AppDelegate in didReceiveRemoteNotification
 @param application The application instance
 @param userInfo The info dict with the push
 */
-(void)didReceieveNotificationinApplication:(UIApplication*_Nullable)application withInfo:(NSDictionary* _Nonnull)userInfo openDeeplinkUrlAutomatically:(BOOL)openUrl;

/**
 Call this method in AppDelegate in didRegisterUserNotificationSettings to register the app for notification setting changes by the user
 @param settings The push notification settings.
 @since iOS8
 */
-(void)didRegisterForUserNotificationSettings:(UIUserNotificationSettings *_Nullable)settings;

/**
 Call this method in AppDelegate in didFailToRegisterForRemoteNotificationsWithError
 */
-(void)didFailToRegisterForPush;

/**
 Call this method in AppDelegate in userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:
 @since iOS 10
 @version 3.0.0 and above
 */
-(void)userNotificationCenter:(UNUserNotificationCenter *_Nonnull)center didReceiveNotificationResponse:(UNNotificationResponse *_Nonnull)response API_AVAILABLE(ios(10.0));


/**
 Use this method to track which action button was clicked by user for a notification.
 
 Call this method in AppDelegate in application:handleActionWithIdentifier:forRemoteNotification:completionHandler:
 
 @param identifier Action Identifier of the Action button clicked by user
 @param notification NSDictionary instance of the notification payload received by the app.
 */
-(void)handleActionWithIdentifier:(NSString *_Nonnull)identifier forRemoteNotification:(NSDictionary *_Nonnull)notification;

#pragma mark - Tracking custom events and attributes

/**
 Call this method to track events.
 @param name The name of the event
 @param payload The dictionary you want to associate with the event (optional)
 @warning Please make sure that you are tracking event attributes without changing their data types. Our system detects the data type automatically unless you explicitly specify it as a string.
 */
-(void)trackEvent:(NSString *_Nonnull)name andPayload:(NSMutableDictionary *_Nullable)payload;

/**
 Call this method if you want to track events with special types like timestamp/datetime or location.
 @param name Event name to be tracked
 @param payload of type MOPayloadBuilder. See MOPaylodBuilder for more details.
 */
-(void)trackEvent:(NSString *_Nonnull)name builderPayload:(MOPayloadBuilder *_Nullable)payload;

/**
 Use this method to set unique attributes to identify the app user. For eg. username, email, age, gender etc.
 @param value The value/attribute
 @warning value can of be type string, integer or bool
 @param key The key, which is the kind of attribute
 */
-(void)setUserAttribute:(id _Nullable )value forKey:(NSString *_Nonnull)key;

/**
 Use this method to set a user attribute which is datetime or time.
 @param timestamp The timestamp in epoch format.
 */
-(void)setUserAttributeTimestamp:(double)timestamp forKey:(NSString *_Nonnull)key;


/**
 Use this method to set a user attribute which is NSDate instance.
 @param date The NSDate instance value to track.
 */
-(void)setUserAttributeDate:(NSDate* _Nonnull)date forKey:(NSString *_Nonnull)key;

/**
 Use this method to set user attribute location.
 @param lat The latitude of the location
 @param lng The longitude of the location
 */
-(void)setUserAttributeLocationLatitude:(double)lat longitude:(double)lng forKey:(NSString *_Nonnull)key;

/**
 Use this method to track device locale settings of user.
 */
-(void)trackLocale;

#pragma mark - Tracking default user attributes
/**
 Use this method to set a unique Identifier(ID) for a user. Please make sure you use this method wisely to only set the unique ID and not use it to update the unique ID, make use of `setAlias:` method for updating the unique ID for a user.
 @param uniqueID A Unique ID to filter the specific user from your user base. Please make sure this value is not hardcoded.
 @attention Please make sure not to use this method to update the unique ID of a logged in user, use setAlias: instead
 @version 3.3.0 and above
 */
-(void)setUserUniqueID:(id _Nullable )uniqueID;

/**
 Use this method to update the Unique ID(ID) value of a user.
 @param uniqueID Unique ID to filter the specific user from your user base. Please make sure this value is not hardcoded.
 @version 3.8.0 and above
 */
-(void)setAlias:(id _Nullable )uniqueID;

/**
 Use this method to track Email ID of a user.
 @param emailID Email ID value to be tracked.
 @version 3.3.0 and above
 */
-(void)setUserEmailID:(NSString*_Nullable)emailID;

/**
 Use this method to track User Name of a user.
 @param name User Name value to be tracked for the user.
 @version 3.3.0 and above
 */
-(void)setUserName:(NSString*_Nullable)name;

/**
 Use this method to track First Name of a user.
 @param firstName User First Name value to be tracked for the user.
 @version 3.3.0 and above
 */
-(void)setUserFirstName:(NSString*_Nullable)firstName;

/**
 Use this method to track Last Name of a user.
 @param lastName User last name value to be tracked for the user.
 @version 3.3.0 and above
 */
-(void)setUserLastName:(NSString*_Nullable)lastName;

/**
 Use this method to track Phone Number of a user.
 @param phNumber Phone Number of user to be tracked.
 @version 3.3.0 and above
 */
-(void)setUserMobileNo:(id _Nullable )phNumber;

/**
 Use this method to track gender of a user.
 @param gender UserGender value indicating if user is MALE or FEMALE.
 @version 3.3.0 and above
 */
-(void)setUserGender:(UserGender)gender;

/**
 Use this method to track Date of birth of a user.
 @param date NSDate instance of birthdate of user.
 @version 3.3.0 and above
 */
-(void)setUserDateOfBirth:(NSDate*_Nullable)date;

/**
 Use this method to track location of a user.
 @param lat latitude value in double of the location cordinate to be tracked.
 @param lng longitude value in double of the location cordinate to be tracked.
 @version 3.3.0 and above
 */
-(void)setUserLocationLatitude:(double)lat andLongitude:(double)lng;

/**
 Use this method to track push preference set by a user.
 @param isPushEnabled A Bool value indicating if the user has enabled push preference in the app.
 @version 3.8.1 and above
 */
-(void)trackUserPushPreference:(BOOL)isPushEnabled;

#pragma mark - Real-Time Triggers

/**
 Method to sync the realtime trigger campaigns created in your account
 @param completionBlock Completion Block indicating the success/failure of the sync
 @version 4.0.1 and above
 */
-(void)syncRealTimeTriggersWithCompletionBlock:(void(^_Nullable)(BOOL rtSyncCompleted))completionBlock;

#pragma mark - In-App

/**
 Call this method in viewDidAppear of the view controller where you want to show the in app message
 @note Adhere to the delegate for InApp - MOInAppDelegate, if you want the callback for the button actions.
 @see MOInAppDelegate
 */
-(void)handleInAppMessage;

/**
 Call this method in viewDidLoad of the view controller where you don't want to show in app messages
 @param viewcontroller The viewcontroller instance where you don't want to show in app
 */
-(void)dontShowInAppInViewController:(UIViewController*_Nonnull)viewcontroller;

/**
 Call this method in viewDidAppear of the view controller where you want to get a self handled in app message
 */
-(NSDictionary*_Nullable)getSelfHandledInApp;

/**
 Call this method to track if self handled in app was shown.
 @param campaignID The campaign ID of the self handled in app shown.
 @version 2.0.0 and above
 */
-(void)selfHandledInAppViewShownWithCampaignID:(NSString* _Nonnull)campaignID;

/**
 Call this method to track if self handled in app Primary widget is clicked.
 @param campaignID The campaign ID of the self handled in app shown.
 @version 3.4.0 and above
 */
-(void)selfHandledInAppClickedWithPrimaryActionAndCampaignID:(NSString*_Nonnull)campaignID;

/**
 Call this method to track if self handled in app widget(other than Primary Widget) is clicked.
 @param campaignID The campaign ID of the self handled in app shown.
 @version 3.4.0 and above
 */
-(void)selfHandledInAppClickedWithSecondaryActionAndCampaignID:(NSString*_Nonnull)campaignID;

/**
 Call this method to track dismiss actions on the inApp.
 @param campaignID The campaign ID of the self handled in app shown.
 @version 3.4.0 and above
 */
-(void)selfHandledInAppClickedWithDismissActionAndCampaignID:(NSString*_Nonnull)campaignID;

/**
 Call this method to get the nudge view created in the dashboard. There can be only 1 active nudge view at any given point of time
 @param completionBlock Completion Block with the nudge View and campaign ID.
 */
-(void)getNudgeViewWithCompletionBlock:(NudgeCreationCompletionBlock _Nullable)completionBlock;

/**
 Call this method to track if nudge obtained from getNudgeViewWithCompletionBlock was shown.
 @param campaignID The campaign ID of the nudge shown
 */
-(void)nudgeViewShownWithCampaignID:(NSString* _Nonnull)campaignID;

/**
 Call this method to show the nudge view created in the dashboard at top/bottom of the viewcontroller.
 @attention There can be only 1 active nudge view at any given point of time.
 @param position Defines where to add the nudge view Top/Bottom.
 */
-(void)showNudgeViewAtNudgePosition:(NudgePosition)position;

#pragma mark - Utility Methods

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 */
-(void)resetUser;

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 @param completionBlock : Completion block called after the User Reset is done
 @version 4.1.0 and above
 */
-(void)resetUserWithCompletionBlock:(void(^_Nullable)(BOOL userResetSuccessfully))completionBlock;


/**
 Use this method to forcefully sync events to server right now. Useful for testing and to send data in realtime when you don't wish to wait for when the user goes to background or terminates the app.
 */
-(void)syncNow;

/**
 Use this method to forcefully sync events to server right now. Useful for testing and to send data in realtime when you don't wish to wait for when the user goes to background or terminates the app.

 @param completionBlock : Completion block called after data sync is completed
 @version 4.1.0 and above
*/
-(void)flushWithCompletionBlock:(void(^_Nullable)(BOOL syncSuccessful))completionBlock;

/**
 There is a periodic sync enabled by default in SDK, use this method to disable this periodic sync by SDK
 */
-(void)disablePeriodicFlush;

/**
 Use this method to change the periodic sync interval in the SDK,
 @note The interval should be greater than 60 Secs
 @param flushInterval - Interval in seconds for periodic Flush, the interval set should be greater than 60 secs
 */
-(void)setFlushInterval:(NSInteger)flushInterval;

/**
 Use this method to set the app status.
 @param appStatus - Two possible enum values - APP_UDPATE (for app updates) and APP_INSTALL (for new installs)
 */
-(void)appStatus:(AppStatus)appStatus;

/**
 Use this method to enable logs for the MoEngage SDK. You can simply pass yes and no to disable the logs.
 Alternatively you can use Log Levels.
 @see LogLevel
 */
+(void)debug:(LogLevel) logLevel;

/**
 Use this method to redirect the data to region defined in DataRedirectionRegion Enumerator
 @warning Consult with MoEngage team before using this method for redirecting the data
 */
+(void)redirectDataToRegion:(DataRedirectionRegion)region;

/**
 Method to set the App Group ID for Notification impression tracking.
 */
+(void)setAppGroupID:(NSString*_Nonnull)appGroupID;

/**
 Method to dismiss the RichLanding Controller manually
 @param animate Bool value indicating if the dismissing the controller should be with animation
 */
-(void)dismissRichLandingWebViewControllerWithAnimation:(BOOL)animate;


#pragma mark - Process URL Method

/**
 Method to process URL for Analytics module source tracking
 @param url Deeplink URL to be processes
 */
-(void)processURL:(NSURL* _Nonnull)url;

@end



