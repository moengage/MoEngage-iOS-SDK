//
//  AppDelegate.m
//  MoEngageObjCIntegration
//
//  Created by Chengappa C D on 03/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import "AppDelegate.h"
#import <MoEngage/MoEngage.h>


@interface AppDelegate () <UNUserNotificationCenterDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //TODO: Add your App Group ID
    [MoEngage setAppGroupID:@"Your App Group ID"];
    
    // Enable SDK Logs
    [MoEngage debug:LOG_ALL];
    
    // MoEngage SDK Initialization
    //TODO: Add your MoEngage App ID
    NSString* yourMoEngageAppID = @"DAO6UGZ73D9RTK8B5W96TPYN";
    #ifdef DEBUG
        [[MoEngage sharedInstance] initializeDevWithAppID:yourMoEngageAppID  withLaunchOptions:launchOptions];
    #else
        [[MoEngage sharedInstance] initializeProdWithAppID:yourMoEngageAppID  withLaunchOptions:launchOptions];
    #endif
    
    // Register For Push Notification
    if (@available(iOS 10.0, *)) {
        [[MoEngage sharedInstance] registerForRemoteNotificationWithCategories:nil withUserNotificationCenterDelegate:self];
    } else {
        [[MoEngage sharedInstance] registerForRemoteNotificationForBelowiOS10WithCategories:nil];
    }
    
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




@end
