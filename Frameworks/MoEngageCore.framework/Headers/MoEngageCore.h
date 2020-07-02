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


#import <MoEngageCore/MOConfigManager.h>

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

@interface MoEngageCore : NSObject

+(instancetype)sharedInstance;

/// Making the init method private as this Class has Singleton implementation
-(instancetype _Nonnull)init NS_UNAVAILABLE;


/// Initialize SDK Core with MoEngage App ID
/// @param appID MoEngage App ID.
/// To obtain AppID login to your MoEngage account, go to Settings in the left panel of the dashboard. Under App Settings, you will find your APP ID.
-(void)initializeWithAppID:(NSString*)appID;

/**
 Use this method to enable logs for the MoEngage SDK. You can simply pass yes and no to disable the logs.
 Alternatively you can use Log Levels.
 @see LogLevel
 */
-(void)debug:(LogLevel) logLevel;

/**
 Use this method to redirect the data to region defined in DataRedirectionRegion Enumerator
 @warning Consult with MoEngage team before using this method for redirecting the data
 */
-(void)redirectDataToRegion:(DataRedirectionRegion)region;

/**
 Method to set the App Group ID for Notification impression tracking.
 */
-(void)setAppGroupID:(NSString*_Nonnull)appGroupID;

/**
 Method to dismiss the RichLanding Controller manually
 @param animate Bool value indicating if the dismissing the controller should be with animation
 */
-(void)dismissRichLandingWebViewControllerWithAnimation:(BOOL)animate;

/// Method to check if Device Unique ID is present.
-(BOOL)isDeviceUniqueIDPresentInKeyChain;

/// Method to download image with given URL
/// @param imageURL Image URL to be downloaded
/// @param completion Completion block called after download with data downloaded
-(void)downloadImageForURL:(NSURL*)imageURL andCompletionHandler:(void (^)(BOOL,NSData* _Nullable))completion;
@end

NS_ASSUME_NONNULL_END
