//
//  MoEngageAppDelegateSwizzler.h
//  MoEngage
//
//  Created by Chengappa C D on 22/07/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/** This class contains methods that isa swizzle the app delegate. */
@interface MoEngageAppDelegateSwizzler : NSProxy

+ (nullable NSString*)registerAppDelegateInterceptor:
(id<UIApplicationDelegate>)interceptor;
+ (void)unregisterAppDelegateInterceptorWithID:(NSString*)interceptorID;
+ (void)proxyOriginalDelegate;
+ (void)proxyOriginalDelegateIncludingAPNSMethods;
+ (BOOL)isAppDelegateProxyEnabled;
+ (nullable UIApplication *)sharedApplication;

- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
