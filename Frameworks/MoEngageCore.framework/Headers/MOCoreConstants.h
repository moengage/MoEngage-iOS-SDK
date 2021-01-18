//
//  MOUtilsConstant.h
//  MOUtils
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

// User Default Keys
extern NSString* const kUserDefaultSDKSuitName;

extern NSString* const kUserDefaultsKeySDKVersion;
extern NSString* const kUserDefaultsKeyAppVersion;
extern NSString* const kUserDefaultsKeySDKUniqueId;
extern NSString* const kUserDefaultsKeyPushToken;
extern NSString* const kUserDefaultsKeyMoEngageAppID;
extern NSString* const kUserDefaultsKeyHasDeviceAddFailed;
extern NSString* const kUserDefaultsKeyIsSDKEnabled;
extern NSString* const kUserDefaultsKeyInstallRegistered;
extern NSString* const kUserDefaultsKeyConfigLastUpdated;

extern NSString* const kUserDefaultsKeyOlderMoEngageAppID;
extern NSString* const kUserDefaultsKeyOlderSDKUniqueId;
extern NSString* const kUserDefaultsKeyOlderAppGroupID;
extern NSString* const kUserDefaultsKeyOlderPushToken;

// Notification Name Keys
extern NSString* const kNotificationNameUserReset;
extern NSString* const kNotificationNameShowInApp;
extern NSString* const kNotificationNameInitNewUser;
extern NSString* const kNotificationNameUpdateModules;

// Date Formats
extern NSString* const kMODateFormatISO8601;
extern NSString* const kMODateFormatISO8601WithoutZ;
extern NSString* const kMODateFormatISO8601MilliSec;
extern NSString* const kMODateFormatShort;
extern NSString* const kMOTimeFormatMilliSec;
extern NSString* const kMOTimeFormatOnlyTimeWithoutZ;

// Integration Constants
extern NSString* const MoEngage_Cordova_SDK_Version;
extern NSString* const MoEngage_React_Native_SDK_Version;
extern NSString* const MoEngage_Segment_SDK_Version;
extern NSString* const MoEngage_Xamarin_SDK_Version;
extern NSString* const MoEngage_Flutter_SDK_Version;
extern NSString* const MoEngage_Unity_SDK_Version;

#pragma mark- Other Keys
extern NSString* const MO_KEYCHAIN_SERVICE;

