//
//  MONetworkConfiguration.h
//  MoEngageCore
//
//  Created by Chengappa C D on 01/11/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 NetworkService is Enumerator which is used for different API calls in the SDK
 */
typedef enum NetworkService{
    SERVICE_GET_CONFIG,
    SERVICE_INITIALIZE,
    SERVICE_SEND_REPORTS,
    SERVICE_FETCH_INAPP_METAS,
    SERVICE_GET_INAPP_PAYLOAD,
    SERVICE_GET_INAPP_TEST_PAYLOAD,
    SERVICE_SEND_INAPP_STATS,
    SERVICE_INBOX,
    SERVICE_SEND_CATEGORIES,
    SERVICE_GET_DEVICE_TRIGGERS,
    SERVICE_CHECK_USER_IN_SEG,
    SERVICE_GEOFENCE_HIT,
    SERVICE_GET_GEOFENCES,
    SERVICE_CARDS_FETCH,
    SERVICE_CARDS_DELETE,
    SERVICE_CARDS_UPDATE_USER_ACTIVITY,
    SERVICE_CRASH_LAKE
}ServiceType;

@interface MONetworkConfiguration : NSObject

+(instancetype)defaultConfiguration;

-(void)updateDefaultHost:(NSString*)updatedHost;
-(void)updateDefaultScheme:(NSString*)updatedScheme;
-(void)updateDefaultPort:(NSInteger)updatedPort;


-(NSString*)hostForService:(ServiceType)service;
-(NSString*)schemeForService:(ServiceType)service;
-(NSNumber*)portForService:(ServiceType)service;

- (NSURLSession*)getMOURLSession;

+(NSMutableDictionary* _Nullable)getQueryParamsBodyDictForService:(ServiceType)service;
@end

NS_ASSUME_NONNULL_END
