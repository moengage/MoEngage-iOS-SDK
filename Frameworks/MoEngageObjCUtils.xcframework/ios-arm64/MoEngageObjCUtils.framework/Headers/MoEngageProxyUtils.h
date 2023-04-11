//
//  MoEngageProxyUtils.h
//  MoEngageObjCUtils
//
//  Created by Chengappa C D on 23/09/21.
//  Copyright © 2021 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MoEngageCore-Swift.h>

#define MOLogError(config, st, f, ... )          [MoEngageLogger error:[NSString stringWithFormat:(f), ##__VA_ARGS__] stackTrace:st label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLogInfo(config, f, ... )          [MoEngageLogger info:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLogWarning(config, f, ... )          [MoEngageLogger warning:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLog(config, f, ... )          [MoEngageLogger debug:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

#define MOLogDebug(config, f, ... )     [MoEngageLogger debug:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

#define MOLogVerbose(config, f, ... )   [MoEngageLogger verbose:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

NS_ASSUME_NONNULL_BEGIN

@interface MoEngageProxyUtils : NSObject
+ (NSString*)getAppDelegateProxyInfoPlistKey;
+ (BOOL)isAppDelegateProxyEnabled;
+ (BOOL)isAppDelegateProxyConfigured;
+ (void)setAppDelegateProxyConfigured;
@end

NS_ASSUME_NONNULL_END
