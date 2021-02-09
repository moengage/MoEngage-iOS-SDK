//
//  MoEngageCore.h
//  MoEngageCore
//
//  Created by Chengappa C D on 01/11/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for MoEngageCore.
FOUNDATION_EXPORT double MoEngageCoreVersionNumber;

//! Project version string for MoEngageCore.
FOUNDATION_EXPORT const unsigned char MoEngageCoreVersionString[];

#import <MoEngageCore/MOSDKConfig.h>
#import <MoEngageCore/MOConfigLegacy.h>
#import <MoEngageCore/MOConfigHandler.h>
#import <MoEngageCore/MOConfigDataManager.h>

#import <MoEngageCore/MONetworkRequest.h>
#import <MoEngageCore/MONetworkConfiguration.h>

#import <MoEngageCore/MOLogger.h>
#import <MoEngageCore/MOKeychain.h>
#import <MoEngageCore/MOCoreUtils.h>
#import <MoEngageCore/MODateUtils.h>
#import <MoEngageCore/MOCoreConstants.h>

#import <MoEngageCore/MOModelObject.h>
#import <MoEngageCore/MOAppDelegateSwizzler.h>
#import <MoEngageCore/NSDictionary+MOExtension.h>
#import <MoEngageCore/NSMutableDictionary+MOExtension.h>


NS_ASSUME_NONNULL_BEGIN

@protocol MOAppIDUpdateDelegate <NSObject>
-(void)appIDChangeHandledWithCompletionBlock:(void(^)(void))completion;
@end

@interface MoEngageCore : NSObject

@property(weak, nonatomic, nullable) id<MOAppIDUpdateDelegate> appIdUpdateDelegate;

+(instancetype)sharedInstance;

/// Making the init method private as this Class has Singleton implementation
-(instancetype _Nonnull)init NS_UNAVAILABLE;


/// Initialize SDK Core with MoEngage App ID
/// @param sdkConfig MoEngage App ID.
/// To obtain AppID login to your MoEngage account, go to Settings in the left panel of the dashboard. Under App Settings, you will find your APP ID.
-(void)initializeWithConfig:(MOSDKConfig*)sdkConfig withCompletionBlock:(void(^)(void))completion;


-(void)updateSDKConfig:(MOSDKConfig* _Nonnull)sdkConfig withCompletionBlock:(void(^_Nullable)(void))completion;

/// Use this method to enable logs for the MoEngage SDK.
- (void)enableLogs:(BOOL) enable;

/// Method to set the App Group ID for Notification impression tracking.
-(void)setAppGroupID:(NSString*_Nonnull)appGroupID;


/// Method to dismiss the RichLanding Controller manually
/// @param animate Bool value indicating if the dismissing the controller should be with animation
-(void)dismissRichLandingWebViewControllerWithAnimation:(BOOL)animate;

/// Method to check if Device Unique ID is present.
-(BOOL)isDeviceUniqueIDPresentInKeyChain;

/// Method to download image with given URL
/// @param imageURL Image URL to be downloaded
/// @param completion Completion block called after download with data downloaded
-(void)downloadImageForURL:(NSURL*)imageURL andCompletionHandler:(void (^)(BOOL,NSData* _Nullable))completion;

/// Method to know the current status of the SDK. Enabled/Disabled
-(BOOL)isSDKEnabled;

/// Method to enable all the SDK features
-(void)enableSDK;

///  Method to disable all the SDK features
-(void)disableSDK;

/// Get Default Configuration of the SDK
-(MOSDKConfig*)getDefaultSDKConfiguration;

/// Set Data Center in SDK Config
-(void)setDataCenter:(MODataCenter)dataCenter;

@end

NS_ASSUME_NONNULL_END
