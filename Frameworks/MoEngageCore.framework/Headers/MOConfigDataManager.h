//
//  MOConfigDataManager.h
//  MOConfigManager
//
//  Created by Chengappa C D on 01/11/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOLogger.h"
#import "MOSDKConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface MOConfigDataManager : NSObject

+(instancetype)sharedInstance;

-(void)initializeConfigDataManager;

/// Making the init method private as this Class has Singleton implementation
-(instancetype)init NS_UNAVAILABLE;

// Config Update method
-(void)updateConfigFromResponse:(NSDictionary*)response;
-(void)updateSDKConfig:(MOSDKConfig*)updatedConfig;
#pragma mark- Remote Config Properties

// Config API Status
-(BOOL)isAccountActive;
-(BOOL)isInAppServiceActive;
-(BOOL)isGeofenceServiceActive;
-(BOOL)isInboxServiceActive;
-(BOOL)isRealTimeTriggersEnabled;

// Get Backend Configurations
-(NSInteger)getInboxDefaultExpiry;
-(NSInteger)getUserAttributeCachingDuration;
-(NSInteger)getSessionInActiveDuration;
-(NSInteger)getRealTimeTriggerSyncInterval;

//Periodic Flush
-(BOOL)isPeriodicFlushEnabled;
-(NSInteger)getPeriodicFlushDuration;
-(NSInteger)getMinimumPeriodicFlushDurationLimit;

-(NSArray*)getSourceExtraKeys;
-(NSArray*)getBlackListedEvents;
-(NSArray*)getBlackListedUserAttributes;
-(NSArray*)getInstantFlushEvents;
-(NSArray*)getWhitelistedEvents;

// Track Event Methods
-(BOOL)isEventBlackListed:(NSString*)eventname;
-(BOOL)isEventInstantFlushEvent:(NSString*)eventname;
-(BOOL)isEventWhitelistedEvent:(NSString*)eventname;

-(BOOL)isUserAttributeBlackListed:(NSString*)userAttrName;

// Unique ID
-(NSArray*)getRestrictedUniqueIDRegex;
-(BOOL)isUniqueIDRestricted:(NSString*)uniqueID;

//Misc
-(NSInteger)getEventBatchCount;

// API Encryption
-(NSString*)getAppEncryptionKey;
-(NSString*)getDefaultEncryptionKey;

// CrashLake
-(BOOL)isRemoteLoggingEnabled;
-(MOLoggerType)getRemoteMinLogLevel;


#pragma mark- SDK Config Properties
-(void)setDataCenter:(MODataCenter)dataCenter;
-(MODataCenter)getDataCenter;
-(NSString* _Nullable)getMoEAppID;
-(MOPluginType)getIntegrationType;
-(NSString*)getIntegrationVersion;
-(NSString* _Nullable)getAppGroupID;

-(BOOL)isDataTrackingEnabled;
-(BOOL)isPushNotificationEnabled;
-(BOOL)isInAppEnabled;
-(BOOL)isIDFVTrackingEnabled;
-(BOOL)isIDFATrackingEnabled;
-(BOOL)isNetworkEncryptionEnabled;

-(MOSDKConfig*)getDefaultSDKConfiguration;

-(void)setDataTrackingOptedOut:(BOOL)dataTrackingStatus;
-(void)setUserPushNotificationOptedOut:(BOOL)pushStatus;
-(void)setUserInAppNotificationOptedOut:(BOOL)inAppStatus;
@end

NS_ASSUME_NONNULL_END

