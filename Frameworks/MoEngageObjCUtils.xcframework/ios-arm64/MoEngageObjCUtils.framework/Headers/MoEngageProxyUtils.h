//
//  MoEngageProxyUtils.h
//  MoEngageObjCUtils
//
//  Created by Chengappa C D on 23/09/21.
//  Copyright © 2021 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MoEngageCore-Swift.h>

#define MODefaultLog(logLevel, lb, st, msg, ...) [MoEngageLogger logDefaultWithLogLevel:logLevel message:[NSString stringWithFormat:(msg), ##__VA_ARGS__] stackTrace:st label:lb shouldLogContext:YES file:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] method:NSStringFromSelector(_cmd)]

#define MOLog(logger, logLevel, lb, st, msg, ...)  [logger logWithLogLevel:logLevel message:[NSString stringWithFormat:(msg), ##__VA_ARGS__] stackTrace:st label:lb shouldLogContext:YES file:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] method:NSStringFromSelector(_cmd)]

NS_ASSUME_NONNULL_BEGIN

@interface MoEngageProxyUtils : NSObject
+ (NSString*)getAppDelegateProxyInfoPlistKey;
+ (BOOL)isAppDelegateProxyEnabled;
+ (BOOL)isAppDelegateProxyConfigured;
+ (void)setAppDelegateProxyConfigured;
@end

NS_ASSUME_NONNULL_END
