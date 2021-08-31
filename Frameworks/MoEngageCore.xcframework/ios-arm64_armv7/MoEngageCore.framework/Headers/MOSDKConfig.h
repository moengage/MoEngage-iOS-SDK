//
//  MOSDKConfiguration.h
//  MoEngageCore
//
//  Created by Chengappa C D on 28/07/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MOConfigLegacy.h>

/**
 Enumerator which gives which Region the Data has to be redirected
 @warning Consult with MoEngage team before using this enumerator in the App
 */

typedef enum {
    DATA_CENTER_DEFAULT,
    DATA_CENTER_01,
    DATA_CENTER_02,
    DATA_CENTER_03
}MODataCenter;

typedef enum {
    NATIVE,
    SEGMENT,
    CORDOVA,
    REACT_NATIVE,
    FLUTTER,
    UNITY,
    XAMARIN
}MOPluginType;

NS_ASSUME_NONNULL_BEGIN

@interface MOSDKConfig : NSObject <NSCoding>

@property NSString  *moeAppID;
@property MODataCenter moeDataCenter;
@property NSString  *appGroupID;
@property MOPluginType  pluginIntegrationType;
@property NSString  *pluginIntegrationVersion;

@property NSInteger   analyticsPeriodicFlushDuration;

@property BOOL  analyticsDisablePeriodicFlush;
@property BOOL  encryptNetworkRequests;

@property BOOL  optOutDataTracking;
@property BOOL  optOutPushNotification;
@property BOOL  optOutInAppCampaign;
@property BOOL  optOutIDFATracking;
@property BOOL  optOutIDFVTracking;

-(instancetype)initWithAppID:(NSString*)moeAppID;
-(instancetype)init NS_UNAVAILABLE;
-(void)updateValuesFromLegacyConfig:(MOConfigLegacy*)legacyConfig;

@end

NS_ASSUME_NONNULL_END
