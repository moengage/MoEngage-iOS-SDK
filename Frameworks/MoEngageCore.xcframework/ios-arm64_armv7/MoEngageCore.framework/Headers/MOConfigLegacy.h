//
//  MOConfigLegacy.h
//  MoEngage
//
//  Created by Chengappa C D on 29/11/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MOLogger.h>

typedef enum DataRedirectionRegion{
    MOE_REGION_SERV3,
    MOE_REGION_EU,
    MOE_REGION_DEFAULT
}DataRedirectionRegion;

@interface MOConfigLegacy : NSObject<NSCoding>

@property NSString  *accountStatus;
@property NSString  *inAppServiceStatus;
@property NSString  *inboxServiceStatus;
@property NSString  *geofenceServiceStatus;
@property NSString  *deviceTriggerServiceStatus;
@property NSString  *periodicSyncStatus;

@property NSArray   *blackListedEventsArray;
@property NSArray   *instantFlushEventsArray;
@property NSArray   *dataTrackingOptedOutWhitelistedEventsArray;
@property NSArray   *analyticsSourceExtraKeysArray;
@property NSArray   *restrictedUniqueIDRegexArray;

@property NSUInteger eventsBatchCount;
@property NSUInteger inboxDefaultDuration;
@property NSUInteger periodicSyncInterval;
@property NSUInteger deviceTriggerSyncDuration;
@property NSUInteger userAttrCachingDuration;
@property NSUInteger analyticsSessionInactiveDuration;

@property NSString  *dataRedirectionRegion;

//GDPR
@property BOOL  dataTrackingOptedOut;
@property BOOL  userPushOptedOut;
@property BOOL  userInAppOptedOut;

@end
