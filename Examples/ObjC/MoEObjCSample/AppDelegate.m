//
//  AppDelegate.m
//  MoEngageObjCIntegration
//
//  Created by Chengappa C D on 03/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import "AppDelegate.h"
#import <MoEngage/MoEngage.h>


@interface AppDelegate () <UNUserNotificationCenterDelegate, MOMessagingDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MOMessaging.sharedInstance.messagingDelegate = self;
    //TODO: Add your App Group ID
    // Enable SDK Logs
    [MoEngage enableSDKLogs:true];
    
    //TODO: Add your MoEngage App ID
    NSString* yourMoEngageAppID = @"Your App ID";
    
    MOSDKConfig* sdkConfig = [[MOSDKConfig alloc] initWithAppID:yourMoEngageAppID];
    sdkConfig.moeDataCenter = DATA_CENTER_01;
    sdkConfig.appGroupID = @"appGroupID"; //appGroupID configured in capabilities
    // MoEngage SDK Initialization
    
    #ifdef DEBUG
        [[MoEngage sharedInstance] initializeTestWithConfig:sdkConfig andLaunchOptions:launchOptions];
    #else
        [[MoEngage sharedInstance] initializeLiveWithConfig:sdkConfig andLaunchOptions:launchOptions];
    #endif
    
    // Register For Push Notification
    [[MoEngage sharedInstance] registerForRemoteNotificationWithCategories:nil withUserNotificationCenterDelegate:self];
    
    // Track App Status INSTALL/UPDATE
    [self sendAppStatusToMoEngage];
    return YES;
}


- (void)configureMoEngageInApplication:(UIApplication *)application withLaunchOptions:(NSDictionary *)launchOptions {


}

#pragma mark - Push Notification

//Remote notification Registration callback methods
- (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken {
    [[MoEngage sharedInstance] setPushToken:deviceToken];
}

-(void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    [[MoEngage sharedInstance]didFailToRegisterForPush];
}

- (void) application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [[MoEngage sharedInstance]didReceieveNotificationinApplication:application withInfo:userInfo];
}

#pragma mark- User Notification Center delegate methods

- (void)userNotificationCenter:(UNUserNotificationCenter *)center
       willPresentNotification:(UNNotification *)notification
         withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler API_AVAILABLE(ios(10.0)){
    completionHandler((UNNotificationPresentationOptionSound
                       | UNNotificationPresentationOptionAlert ));
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center
didReceiveNotificationResponse:(UNNotificationResponse *)response
         withCompletionHandler:(nonnull void (^)(void))completionHandler API_AVAILABLE(ios(10.0)){
    [[MoEngage sharedInstance] userNotificationCenter:center didReceiveNotificationResponse:response];
    NSDictionary *pushDictionary = response.notification.request.content.userInfo;
    if (pushDictionary) {
        NSLog(@"Push Payload : %@",pushDictionary);
    }
    completionHandler();
    
}

#pragma mark - App Status Tracking Example

-(NSString *)getAppVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

-(void)saveAppVersionToDefaults{
    [[NSUserDefaults standardUserDefaults]setObject:[self getAppVersion] forKey:@"app version"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

-(void)sendAppStatusToMoEngage{
    
    // check install. if app version does not exist in defaults, it means it is an install for sure.
    if(![[NSUserDefaults standardUserDefaults]objectForKey:@"app_version"]){
        [[MoEngage sharedInstance]appStatus: INSTALL];
        [self saveAppVersionToDefaults];
        return;
    }
    
    // It is an update. Check if the latest app version is greater than that saved in the user defaults
    if(![[self getAppVersion] isEqualToString:[[NSUserDefaults standardUserDefaults]objectForKey:@"app_version"]]){
        [[MoEngage sharedInstance]appStatus: UPDATE];
        [self saveAppVersionToDefaults];
    }
}

-(void)notificationClickedWithScreenName:(NSString *)screenName andKVPairs:(NSDictionary *)kvPairs{
    if (screenName) {
        NSLog(@"Screen Name : %@",screenName);
    }
    if (kvPairs) {
        NSLog(@"KV Pairs : %@",kvPairs);
    }
}

-(void)notificationClickedWithScreenName:(NSString *)screenName KVPairs:(NSDictionary *)kvPairs andPushPayload:(NSDictionary *)userInfo{
    NSLog(@"Push Payload: %@",userInfo);
    if (screenName) {
        NSLog(@"Screen Name : %@",screenName);
    }
    if (kvPairs) {
        NSLog(@"KV Pairs : %@",kvPairs);
    }
}


@end
