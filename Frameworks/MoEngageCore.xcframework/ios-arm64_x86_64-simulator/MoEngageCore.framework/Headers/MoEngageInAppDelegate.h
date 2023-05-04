//
//  MoEngageInAppDelegate.h
//  MoEngageCore
//
//  Created by Rakshitha on 28/04/22.
//  Copyright © 2022 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MoEngageSDKInstance;

/// This class is used for internal purpose. Do not call any of the methods explicitly.
@interface MoEngageInAppDelegate: NSObject

-(void)trackEvent:(NSString*)eventName withEventAttribute:(NSDictionary*)eventAttribute forSDKInstance:(MoEngageSDKInstance*)sdkInstance;
-(void)logout:(MoEngageSDKInstance*)sdkInstance withCompletionHandler:(void(^)(void))completionHandler;
-(void)updateModule:(MoEngageSDKInstance*)sdkInstance;
-(void)initializeInApp:(MoEngageSDKInstance*)sdkInstance;

-(void)applicationEnteredForeground:(MoEngageSDKInstance*)sdkInstance;
-(void)applicationWillResignActive:(MoEngageSDKInstance*)sdkInstance;
-(void)keyboardWillShow:(MoEngageSDKInstance*)sdkInstance;
-(void)keyboardDidHide:(MoEngageSDKInstance*)sdkInstance;
-(void)StatusBarOrientationChanged:(MoEngageSDKInstance*)sdkInstance;
-(void)showInAppViaPush:(NSNotification*)notification;
-(void)migrateDataFromPreviousVersionsForSDKInstance:(MoEngageSDKInstance*)sdkInstance;
-(void)migrateDataFromNoNEncryptionToEncryptionForSDKInstance:(MoEngageSDKInstance*)sdkInstance currentSDKInstance:(MoEngageSDKInstance*) sdkInstance;
-(void)removeEncryptedFolder:(MoEngageSDKInstance*)sdkInstance;
-(void)syncInAppStatsDataForSDKInstance:(MoEngageSDKInstance*)sdkInstance withCompletionHandler:(void(^)(void))completionHandler;
-(void)removeInAppStorageDataForSDKInstance:(MoEngageSDKInstance*)sdkInstance withCompletionHandler:(void(^)(void))completionHandler;
@end

