//
//  MoEngageSDK.h
//  MoEngageSDK
//
//  Created by Karthik Thirumalasetti on 06/07/14.
//  Copyright (c) 2014 alphadevs. All rights reserved.
//
// SDK Version 1.4.3

#import <Foundation/Foundation.h>

/** 
 Conform to this protocol if you want to handle the action of the in-app messages' button clicks.
 */
@protocol MOInAppDelegate <NSObject>
@optional
/**
 This method is called when the user clicks on the button in the in-app message. Conform to MoInAppDelegate to use this callback method.
 @param text - The text shown on the button.
 @param dataDictionary - The key value data dictionary associated with the button.
 */
-(void)inAppButtonClickedWithText:(NSString *)text andData:(NSDictionary *)dataDictionary;

/**
 This method is called when the user clicks on the nudge view.
 @param dataDictionary - The key value data dictionary associated with the nudge view object.
 */
-(void)nudgeTapped:(NSDictionary *)dataDictionary;

/**
 This method is called when when the user clicks on the cross/dismiss button of the nudge view.
 @param dataDictionary - The key value data dictionary associated with the nugde view object.
*/
-(void)nudgeClosed:(NSDictionary *)dataDictionary;

@end

@interface MoEngage : NSObject

#pragma mark - Properties 

@property(nonatomic, weak) id<MOInAppDelegate> delegate;

/**
 Set this property to change the default delay between two in-app messages.
 The delay is in minutes. Default value is 15 minutes.
 */
@property(nonatomic, assign) NSInteger delayBetweenInApps;

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

#pragma mark - Methods

/**
 Call this method in the AppDelegate in didFinishLaunchingWithOptions to initialize the SDK
 @param apiKey The unique apiKey provided for your app
 @param application The application instance
 @param launchOptions The launch options dictionary
 */
-(void)initializeWithApiKey:(NSString *)apiKey inApplication:(UIApplication*)application withLaunchOptions:(NSDictionary*)launchOptions;

/**
 Call this method in AppDelegate in didRegisterForRemoteNotificationsWithDeviceToken to register your app with MoEngage for push notifications
 @param deviceToken The token of the device for push notifications
 */
-(void)registerForPush:(NSData *)deviceToken;

/**
 Call this method in AppDelegate in didFailToRegisterForRemoteNotificationsWithError
*/
-(void)didFailToRegisterForPush;

/**
 Call this method in AppDelegate in applicationDidEnterBackground
 @param application The application instance
 */
-(void)stop:(UIApplication *)application;

/**
 Call this method to track events.
 @param name The name of the event
 @param payload The dictionary you want to associate with the event (optional)
 @warning Please make sure that you are tracking event attributes without changing their data types. Our system detects the data type automatically unless you explicitly specify it as a string.
 */
-(void)trackEvent:(NSString *)name andPayload:(NSMutableDictionary *)payload;

/**
 Use this method to set unique attributes to identify the app user. For eg. username, email, age, gender etc.
 @param value The value/attribute
 @warning value can of be type string, integer or bool
 @param key The key, which is the kind of attribute
 */
-(void)setUserAttribute:(id)value forKey:(NSString *)key;

/**
 Use this method to set user's location
 @param lat - the latitude of the location
 @param lng - the longitude
 */
-(void)setUserLocationwithLatitude:(double)lat withLongitude:(double)lng;

/**
 Call this method in AppDelegate in didReceiveRemoteNotification
 @param application The application instance
 @param userInfo The info dict with the push
 */
-(void)didReceieveNotificationinApplication:(UIApplication*)application withInfo:(NSDictionary*)userInfo;

/**
 Call this method in applicationDidBecomeActive
 @param application The application instance
 */
-(void)applicationBecameActiveinApplication:(UIApplication*)application;

/**
 Use this method to set the location associated with a location attribute
 @param lat The latitude of the location
 @param lng The longitude of the location
 @param locationAttrName The name of the location attribute
 @param dict The dict associated with this location event, if any
 */
+(void)setLocationwithLat:(double)lat lng:(double)lng withName:(NSString*)locationAttrName inDictionary:(NSMutableDictionary*) dict;

/**
 Call this method in AppDelegate in applicationWillTerminate
 @param application The application instance
 */
-(void)applicationTerminated:(UIApplication*)application;

/**
 Call this method in viewDidLoad of the view controller where you want to show the in app message
 NOTE: Adhere to the delegate for InApp - MOInAppDelegate, if you want the callback for the button actions.
 @see MOInAppDelegate
 */
-(void)handleInAppMessage;

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 */
-(void)resetUser;

/**
 Use this method to forcefully sync events to server right now. Useful for testing and to send data in realtime when you don't wish to wait for when the user goes to background or terminates the app.
 */
-(void)syncNow;

/**
 Call this method to get the nudge view created in the dashboard. There is only 1 nudge view
 @see MOInAppDelegate
 */
-(UIView *)getNudgeView;

/**
 Use this method in viewWillAppear
 @param screen - The name of the view controller or a similar name to identify the same
 @warning This method is not mandatory for now. If you have both Android and iOS apps, please suffix or prefix the OS name for easier understanding of the marketing team.
 */
-(void)trackScreenStart:(NSString *)screen;

/**
 Use this method in viewWillDisappear
 @param screen - The name of the view controller or a similar name to identify the same
 @warning This method is not mandatory for now. If you have both Android and iOS apps, please suffix or prefix the OS name for easier understanding of the marketing team.
 */
-(void)trackScreenStop:(NSString *)screen;

@end
