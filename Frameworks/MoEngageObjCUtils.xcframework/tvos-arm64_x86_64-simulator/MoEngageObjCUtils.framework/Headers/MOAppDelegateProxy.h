//
//  MOAppDelegateProxy.h
//  MoEngage
//
//  Created by Chengappa C D on 22/07/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MOAppDelegateAnalyticsProxyProtocol <NSObject>
-(void)handleOpenURL:(NSURL*)url;
@end

@protocol MOAppDelegateMessagingProxyProtocol <NSObject>
- (void)applicationDidRegisterForRemoteNotificationsWithDeviceToken:(nullable NSData*)deviceToken;
- (void)applicationDidFailToRegisterForRemoteNotificationsWithError:(nullable NSError*)error;
- (void)applicationDidReceiveRemoteNotification:(nullable NSDictionary*)userInfo;
- (void)userNotificationCenterWillPresentNotification:(nullable UNNotification*)notification;
- (void)userNotificationCenterDidReceiveNotificationResponse:(nullable UNNotificationResponse*)response API_UNAVAILABLE(tvos);
@end

@interface MOAppDelegateProxy : NSObject
/*
 These proxy delegates are used intenally by the SDK to manage App Callbacks, please don't change the same.
 */
@property(weak, nonatomic) id<MOAppDelegateMessagingProxyProtocol> messagingProxyDelegate;
@property(weak, nonatomic) id<MOAppDelegateAnalyticsProxyProtocol> analyticsProxyDelegate;

+ (instancetype)sharedProxy;
+ (BOOL)canSwizzleMethods;
- (void)swizzleMethodsIfPossible;
@end

NS_ASSUME_NONNULL_END
