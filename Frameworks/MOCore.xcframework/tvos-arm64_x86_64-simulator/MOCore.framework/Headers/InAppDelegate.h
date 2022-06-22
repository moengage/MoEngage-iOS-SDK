//
//  InAppDelegate.h
//  MoEngageCore
//
//  Created by Rakshitha on 28/04/22.
//  Copyright © 2022 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SdkInstance;

/// This class is used for internal purpose. Do not call any of the methods explicitly.
@interface InAppDelegate: NSObject

-(void)trackEvent:(NSString*)eventName withEventAttribute:(NSDictionary*)eventAttribute forSDKInstance:(SdkInstance*)sdkInstance;
-(void)logout:(SdkInstance*)sdkInstance withCompletionHandler:(void(^)(void))completionHandler;
-(void)updateModule:(SdkInstance*)sdkInstance;
-(void)initializeInApp:(SdkInstance*)sdkInstance;

-(void)applicationEnteredForeground:(SdkInstance*)sdkInstance;
-(void)applicationWillResignActive:(SdkInstance*)sdkInstance;
-(void)keyboardWillShow:(SdkInstance*)sdkInstance;
-(void)keyboardDidHide:(SdkInstance*)sdkInstance;
-(void)StatusBarOrientationChanged:(SdkInstance*)sdkInstance;
-(void)showInAppViaPush:(NSNotification*)notification;
@end

