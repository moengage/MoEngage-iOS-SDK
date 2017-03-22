//
//  MoEngageSDK.h
//  MoEngageSDK
//
//  Created by Karthik Thirumalasetti on 06/07/14.
//  Copyright (c) 2014 alphadevs. All rights reserved.
//
// SDK Version 3.3.1

#import <UserNotifications/UserNotifications.h>
#import <SafariServices/SafariServices.h>
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "MOPayloadBuilder.h"
#import "MOEHelperConstants.h"
#import "MONotificationCategory.h"


typedef void(^NudgeCreationCompletionBlock)(UIView *nudgeView, NSString* campaignID);

/**
 Enumerator to define where to place nudge
 */
typedef enum {
    NudgeTop,
    NudgeBottom
}NudgePosition;

/**
 Enumerator to differentiate between Install/Update (Existing user or not)
 */
typedef enum _AppStatus{
    INSTALL,
    UPDATE
}AppStatus;

/**
 Enumerator to set Log Levels for Debugging
 */
typedef enum _LogLevel{
    LOG_NONE,
    LOG_ALL,
    LOG_EXCEPTIONS
}LogLevel;

/**
 Enumerator which gives which widget in an InApp was clicked in an inApp
 */
typedef enum _InAppWidget{
    CLOSE_BUTTON,
    BUTTON,
    IMAGE,
    LABEL
}InAppWidget;

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
-(void)inAppShownWithCampaignID:(NSString*)campaignID;

/**
 This method is called when the user clicks on a widget in the in-app message. Conform to MoInAppDelegate to use this callback method.
 @param screenName - Used in DeepLinking, gives the screen name to navigate.
 @param dataDict - The key value data dictionary associated with the widget tapped.
 */
-(void)inAppClickedForWidget:(InAppWidget)widget screenName:(NSString*)screenName andDataDict:(NSDictionary *)dataDict;

/**
 This method is called when an event triggers an in-app from the server, which is of type self handled. 
 @param data - The data mentioned on the dashboard while creating the in-app is passed onto you
 */
-(void)eventTriggeredInAppAvailableWithData:(id)data;

@end

@interface MoEngage : NSObject <SFSafariViewControllerDelegate>

#pragma mark - Properties 

@property(nonatomic, weak) id<MOInAppDelegate> delegate;

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

+(instancetype)sharedInstance;

#pragma mark - Initialization Methods

/**
 Call this method in the AppDelegate in didFinishLaunchingWithOptions to initialize the SDK for dev build
 @param apiKey The unique apiKey provided for your app
 @param application The application instance
 @param launchOptions The launch options dictionary
 @param openUrl This tells us whether the deeplink should be handled or not, which means whether we call handleOpenUrl or you do it yourself.
 @warning implement initializeProdWithApiKey method also, refer this link for more details : http://docs.moengage.com/docs/ios-app-delegate-changes
 */
-(void)initializeDevWithApiKey:(NSString *)apiKey inApplication:(UIApplication *)application withLaunchOptions:(NSDictionary *)launchOptions openDeeplinkUrlAutomatically:(BOOL)openUrl;

/**
 Call this method in the AppDelegate in didFinishLaunchingWithOptions to initialize the SDK for production build
 @param apiKey The unique apiKey provided for your app
 @param application The application instance
 @param launchOptions The launch options dictionary
 @param openUrl This tells us whether the deeplink should be handled or not, which means whether we call handleOpenUrl or you do it yourself.
@warning implement initializeDevWithApiKey method also, refer this link for more details : http://docs.moengage.com/docs/ios-app-delegate-changes
 */
-(void)initializeProdWithApiKey:(NSString *)apiKey inApplication:(UIApplication *)application withLaunchOptions:(NSDictionary *)launchOptions openDeeplinkUrlAutomatically:(BOOL)openUrl;

#pragma mark - Push Notifications

/**
 * Method to register for push notification(doesn't support Notification Action in OS version below iOS10)
 @param categories : to set categories for supporting Notification Actions (iOS10)
 @param categoriesForPreviousOS : to set categories for supporting Notification Actions in iOS8 and iOS9 (This should be a set of MONotificationCategory objects)
 @param delegate : to set the delegate for UNUserNotificationCenter.
 */
-(void)registerForRemoteNotificationWithCategories:(NSSet<UNNotificationCategory*>*)categories andCategoriesForPreviousVersions:(NSSet<MONotificationCategory*>*)categoriesForPreviousOS andWithUserNotificationCenterDelegate:(id)delegate;

/**
 * Method to send notification categories to SDK to support Notification Action in iOS10 and above
 */
-(void)setUserNotificationCategories:(NSSet<UNNotificationCategory*>*)categories;


/**
 * Method to send notification categories to SDK to support Notification Action in iOS8 and iOS9
 */
-(void)setNotificationCategoriesForEarlieriOSVersionsWithCategories:(NSSet<MONotificationCategory*>*)categories;

/**
 Call this method in AppDelegate in didRegisterForRemoteNotificationsWithDeviceToken to register your app with MoEngage for push notifications
 @param deviceToken The token of the device for push notifications
 */
-(void)registerForPush:(NSData *)deviceToken;

/**
 Call this method in AppDelegate in didReceiveRemoteNotification
 @param application The application instance
 @param userInfo The info dict with the push
 */
-(void)didReceieveNotificationinApplication:(UIApplication*)application withInfo:(NSDictionary*)userInfo openDeeplinkUrlAutomatically:(BOOL)openUrl;

/**
 Call this method in AppDelegate in didRegisterUserNotificationSettings to register the app for notification setting changes by the user
 @param settings The push notification settings. 
 @since iOS8
 */
-(void)didRegisterForUserNotificationSettings:(UIUserNotificationSettings *)settings;

/**
 Call this method in AppDelegate in didFailToRegisterForRemoteNotificationsWithError
*/
-(void)didFailToRegisterForPush;

/**
 * Call this method in AppDelegate in userNotificationCenter:didReceiveNotificationResponse:withCompletionHandler:
 */
-(void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response;


/*
 * Call this method in AppDelegate in application:handleActionWithIdentifier:forRemoteNotification:completionHandler:
 */
-(void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)notification;

#pragma mark - Tracking custom events and attributes

/**
 Call this method to track events.
 @param name The name of the event
 @param payload The dictionary you want to associate with the event (optional)
 @warning Please make sure that you are tracking event attributes without changing their data types. Our system detects the data type automatically unless you explicitly specify it as a string.
 */
-(void)trackEvent:(NSString *)name andPayload:(NSMutableDictionary *)payload;

/**
 Call this method if you want to track events with special types like timestamp/datetime or location.
 @param payload of type MOPayloadBuilder. See MOPaylodBuilder for more details.
 */
-(void)trackEvent:(NSString *)name builderPayload:(MOPayloadBuilder *)payload;

/**
 Use this method to set unique attributes to identify the app user. For eg. username, email, age, gender etc.
 @param value The value/attribute
 @warning value can of be type string, integer or bool
 @param key The key, which is the kind of attribute
 */
-(void)setUserAttribute:(id)value forKey:(NSString *)key;

/**
 Use this method to set a user attribute which is datetime or time.
 @param timestamp The timestamp in epoch format.
 */
-(void)setUserAttributeTimestamp:(double)timestamp forKey:(NSString *)key;

/**
 Use this method to set user attribute location.
 @param lat The latitude of the location
 @param lng The longitude of the location
 */
-(void)setUserAttributeLocationLatitude:(double)lat longitude:(double)lng forKey:(NSString *)key;

#pragma mark - Tracking default user attributes
/**
 Use these methods to set default user attributes.
 */

// Set Unique ID for user
-(void)setUserUniqueID:(id)uniqueID;

//Set User Email ID
-(void)setUserEmailID:(NSString*)emailID;

//Set User Name
-(void)setUserName:(NSString*)name;

//Set User First Name
-(void)setUserFirstName:(NSString*)firstName;

//Set User Last Name
-(void)setUserLastName:(NSString*)lastName;

//Set User Contact Number
-(void)setUserMobileNo:(id)phNumber;

//Set User Gender
-(void)setUserGender:(UserGender)gender;

//Set User Date of Birth
-(void)setUserDateOfBirth:(NSDate*)date;

//Set User Location
-(void)setUserLocationLatitude:(double)lat andLongitude:(double)lng;

#pragma mark - In-App

/**
 Call this method in viewDidAppear of the view controller where you want to show the in app message
 NOTE: Adhere to the delegate for InApp - MOInAppDelegate, if you want the callback for the button actions.
 @see MOInAppDelegate
 */
-(void)handleInAppMessage;

/**
 Call this method in viewDidLoad of the view controller where you don't want to show in app messages
 @param viewcontroller The viewcontroller instance where you don't want to show in app
 */
-(void)dontShowInAppInViewController:(UIViewController*)viewcontroller;

/**
 Call this method in viewDidAppear of the view controller where you want to get a self handled in app message
 */
-(NSDictionary*)getSelfHandledInApp;

/**
 Call this method to track if self handled in app was shown.
  @param campaignID The campaign ID of the self handled in app shown
 */
-(void)selfHandledInAppViewShownWithCampaignID:(NSString*)campaignID;

/**
 Call this method to get the nudge view created in the dashboard. There can be only 1 active nudge view at any given point of time
 @param completionBlock Completion Block with the nudge View and campaign ID.
 */
-(void)getNudgeViewWithCompletionBlock:(NudgeCreationCompletionBlock)completionBlock;

/**
 Call this method to track if nudge obtained from getNudgeViewWithCompletionBlock was shown.
 @param campaignID The campaign ID of the nudge shown
 */
-(void)nudgeViewShownWithCampaignID:(NSString*)campaignID;

/**
 Call this method to show the nudge view created in the dashboard at top/bottom of the viewcontroller. There can be only 1 active nudge view at any given point of time.
 @param position Defines where to add the nudge view Top/Bottom.
 */
-(void)showNudgeViewAtNudgePosition:(NudgePosition)position;

#pragma mark - Geofencing
/**
 Use this method to start tracking geofences for the current location.
 @param locManager Pass the location manager instance if you have create one. Else, a new one will be created. This param is optional.
 @param location Pass this param if you already have the location of the user or want to hard code a location. Else the location manager will take the current location of the user
 @see MOGeofenceHandler to get completion block
 */
-(void)startGeofencingWithLocationManager:(CLLocationManager *)locManager andCurrentLocation:(CLLocation *)location;


#pragma mark -

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 */
-(void)resetUser;

/**
 Use this method to forcefully sync events to server right now. Useful for testing and to send data in realtime when you don't wish to wait for when the user goes to background or terminates the app.
 */
-(void)syncNow;

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
 Use this method to redirect the data tracked
 @warning Consult with MoEngage team before using this method for redirecting the data
 */
+(void)setDataRedirection:(BOOL)value;

/**
 Method to set the App Group ID for Notification impression tracking.
 */
+(void)setAppGroupID:(NSString*)appGroupID;


#pragma mark- Deprecated Methods

/**
 This method has been deprecated from MoEngage-iOS-SDK version 3.3.0
 */
-(void)applicationBecameActiveinApplication:(UIApplication*)application __deprecated;

/**
 This method has been deprecated from MoEngage-iOS-SDK version 3.3.0
 */
-(void)applicationWillEnterForeground:(UIApplication *)application __deprecated;

/**
 This method has been deprecated from MoEngage-iOS-SDK version 3.3.0
 */
-(void)stop:(UIApplication *)application __deprecated;

/**
 This method has been deprecated from MoEngage-iOS-SDK version 3.3.0
 */
-(void)applicationTerminated:(UIApplication*)application __deprecated;
@end

