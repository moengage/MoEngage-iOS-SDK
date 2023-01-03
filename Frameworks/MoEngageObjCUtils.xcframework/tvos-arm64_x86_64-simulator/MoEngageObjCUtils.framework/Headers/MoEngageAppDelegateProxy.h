//
//  MoEngageAppDelegateProxy.h
//  MoEngage
//
//  Created by Chengappa C D on 22/07/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

@protocol MoEngageAppDelegateAnalyticsProxyProtocol;
@protocol MoEngageAppDelegateMessagingProxyProtocol;

NS_ASSUME_NONNULL_BEGIN


@interface MoEngageAppDelegateProxy : NSObject
/*
 These proxy delegates are used intenally by the SDK to manage App Callbacks, please don't change the same.
 */
@property(weak, nonatomic) id<MoEngageAppDelegateMessagingProxyProtocol> messagingProxyDelegate;
@property(weak, nonatomic) id<MoEngageAppDelegateAnalyticsProxyProtocol> analyticsProxyDelegate;

+ (instancetype)sharedProxy;
+ (BOOL)canSwizzleMethods;
- (void)swizzleMethodsIfPossible;
@end

NS_ASSUME_NONNULL_END
