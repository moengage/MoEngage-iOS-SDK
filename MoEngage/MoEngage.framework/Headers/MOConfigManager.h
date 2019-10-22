//
//  MOConfig.h
//  MoEngage
//
//  Created by Chengappa C D on 06/09/17.
//  Copyright © 2017 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Enumerator which gives which Region the Data has to be redirected
 @warning Consult with MoEngage team before using this enumerator in the App
 */
typedef enum DataRedirectionRegion{
    MOE_REGION_INDIA,
    MOE_REGION_EU,
    MOE_REGION_DEFAULT
}DataRedirectionRegion;

@interface MOConfigManager : NSObject

+(instancetype)sharedInstance;

-(void)printCurrentServicesStatus;

// Config Update method
-(void)updateConfigFromResponse:(NSDictionary*)response;

// Redirection Region
-(void)setDataRedirectionRegion:(DataRedirectionRegion)region;
-(DataRedirectionRegion)getDataRedirectionRegion;

// Config API Status
-(BOOL)isAccountActive;
-(BOOL)isInAppServiceActive;
-(BOOL)isGeofenceServiceActive;
-(BOOL)isInboxServiceActive;
-(BOOL)isLogentriesEnabled;
-(BOOL)isPeriodicSyncEnabled;
-(BOOL)isDeviceTriggerEnabled;

// Get Backend Configurations
-(NSString*)getLogEntriesToken;
-(NSInteger)getInboxDefaultExpiry;
-(NSInteger)getEventBatchCount;
-(NSInteger)getPeriodicSyncDuration;
-(NSInteger)getUserAttributeCachingDuration;
-(NSInteger)getSessionInActiveDuration;
-(NSInteger)getRealTimeTriggerSyncInterval;
-(NSArray*)getSourceExtraKeys;
-(NSArray*)getBlackListedEvents;
-(NSArray*)getInstantFlushEvents;
-(NSArray*)getWhitelistedEvents;


// Unique ID
-(NSArray*)getRestrictedUniqueIDRegex;
-(BOOL)isUniqueIDRestricted:(NSString*)uniqueID;

// Track Event Methods
-(BOOL)isEventBlackListed:(NSString*)eventname;
-(BOOL)isEventInstantFlushEvent:(NSString*)eventname;
-(BOOL)isEventWhitelistedEvent:(NSString*)eventname;

// GDPR Changes
-(void)setDataTrackingOptedOut:(BOOL)dataTrackingStatus;
-(void)setUserPushNotificationOptedOut:(BOOL)pushStatus;
-(void)setUserInAppNotificationOptedOut:(BOOL)inAppStatus;

-(BOOL)isDataTrackingEnabled;
-(BOOL)isUserPushEnabled;
-(BOOL)isUserInAppEnabled;

@end
