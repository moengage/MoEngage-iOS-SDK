//
//  MOAnalytics.h
//  MOAnalytics
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for MOAnalytics.
FOUNDATION_EXPORT double MOAnalyticsVersionNumber;

//! Project version string for MOAnalytics.
FOUNDATION_EXPORT const unsigned char MOAnalyticsVersionString[];


#import <MOAnalytics/MOPayloadBuilder.h>
#import <MOAnalytics/MOHelperConstants.h>
#import <MOAnalytics/MOEventCondition.h>
#import <MOAnalytics/MOProperties.h>
#import <MOAnalytics/MOSource.h>

NS_ASSUME_NONNULL_BEGIN
/**
 Enumerator to differentiate between INSTALL/UPDATE (Existing user or not)
 */
typedef enum _AppStatus{
    INSTALL,
    UPDATE
}AppStatus;

/**
 Enumerator which defines possible value for Gender user attribute for a user
 */
typedef enum UserGender{
    MALE,
    FEMALE,
    OTHER
}UserGender;


/// Protocol for getting callback on event being tracked
@protocol MOEventTriggerDelegate <NSObject>
-(void)eventTrackedWithName:(NSString*)eventName andEventAttr:(NSDictionary*)eventAttr;
@end

@interface MOAnalytics : NSObject

/// Delegate for getting callback on track event for smart-trigger InApp Campaign
@property(weak, nonatomic, nullable) id<MOEventTriggerDelegate> inappTriggerDelegate;

/// Delegate for getting callback on track event for real-time trigger Campaign
@property(weak, nonatomic, nullable) id<MOEventTriggerDelegate> messagingTriggerDelegate;

#pragma mark - Initialize Methods

/// Method to get the singleton instance
+(instancetype _Nonnull )sharedInstance;

/// Making the init method private as this Class has Singleton implementation
-(instancetype _Nonnull)init NS_UNAVAILABLE;

/// Method to initialize Analytics module
-(void)initializeAnalytics;

#pragma mark - Tracking custom events and attributes
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
/*
Method to support deprecated trackEvent:builderPayload: in MoEngage class
@warning This is an internal SDK method, and will be deprecated in SDK version 8.0.0
*/
-(void)trackEvent:(NSString *_Nonnull)name builderPayload:(MOPayloadBuilder *_Nullable)payload;
#pragma clang diagnostic pop
/**
 Call this method to track events
 @param name Event name to be tracked
 @param properties of type MOProperties for event attributes. See MOProperties for more details.
 */
-(void)trackEvent:(NSString *_Nonnull)name withProperties:(MOProperties *_Nullable)properties;

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
 Use this method to set a user attribute which is NSDate instance.
 @param dateStr Date String in ISO date format [yyyy-MM-dd'T'HH:mm:ss'Z'].
 */
-(void)setUserAttributeISODateString:(NSString* _Nonnull)dateStr forKey:(NSString *_Nonnull)key;

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

-(void)setAlias:(id _Nullable )uniqueID;
/**
 Use this method to track push preference set by a user.
 @param isPushEnabled A Bool value indicating if the user has enabled push preference in the app.
 */
-(void)trackUserPushPreference:(BOOL)isPushEnabled;

#pragma mark - Process URL Method

/**
 Method to process URL for Analytics module source tracking
 @param url Deeplink URL to be processes
 */
-(void)processURL:(NSURL* _Nonnull)url;

#pragma mark - Utility Methods

/// Internal method called to track SDK Version
-(void)trackSDKVersion;

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 @param completionBlock : Completion block called after the User Reset is done
 */
-(void)resetUserWithCompletionBlock:(void(^_Nullable)(BOOL userResetSuccessfully))completionBlock;

/**
 Call this method to clear the unique attributes of the current user, and add him as a new user. One of the use cases is when a user logs out
 */
-(void)resetUser;

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

/// Internal method called when the push token is updated in SDK
-(void)pushTokenUpdated;

/// Method to update Session Source
/// @param sources Array of source instances
-(void)updateSourcesForCurrentSession:(NSArray*)sources;

/// Method to update device instance in server
/// @param completion Completion Block after
-(void)updateDeviceWithCompletion:(nullable void(^)(BOOL success))completion;

/// Get Tracked IDFA value
-(NSString*)getTrackedIDFA;

/// Method to update white-listed events even when data tracking is opted-out
/// @param eventsArray list of events
-(void)updateOptOutEvents:(NSArray*)eventsArray;

/// Method to opt-out of GDPR Data Tracking
/// @param isOptedOut Data Tracking opt-out status
-(void)optOutOfDataTracking:(BOOL)isOptedOut;

/// Method to opt-out of Advertising Identifier Tracking
/// @param isOptedOut IDFA Tracking opt-out status
-(void)optOutOfIDFATracking:(BOOL)isOptedOut;

/// Method to opt-out of IDFV Tracking
/// @param isOptedOut IDFV Tracking opt-out status
-(void)optOutOfIDFVTracking:(BOOL)isOptedOut;

/// Method to track GDPR Push opt-out status
/// @param value Bool value push opt-out status
/// @param key User Attribute Name to track Push opt-out status
-(void)setPushGDPROptOutStatus:(id)value forKey:(NSString *_Nonnull)key;

/**
 Method called on SDK State update
 */
-(void)moengageSDKStateUpdated;

@end

NS_ASSUME_NONNULL_END
