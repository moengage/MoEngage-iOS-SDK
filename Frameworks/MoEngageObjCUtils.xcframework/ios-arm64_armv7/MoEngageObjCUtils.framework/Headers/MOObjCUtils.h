//
//  MOObjCUtils.h
//  MoEngageObjCUtils
//
//  Created by Chengappa C D on 23/09/21.
//  Copyright © 2021 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MOCore/MOCore-Swift.h>

#define MOLogError(config, st, f, ... )          [MOLogger error:[NSString stringWithFormat:(f), ##__VA_ARGS__] stackTrace:st label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLogInfo(config, f, ... )          [MOLogger info:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLogWarning(config, f, ... )          [MOLogger warning:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config fileName:[[NSString stringWithUTF8String:__FILE__] lastPathComponent] functionName:NSStringFromSelector(_cmd) lineNumber:__LINE__ columnNumber:0]


#define MOLog(config, f, ... )          [MOLogger debug:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

#define MOLogDebug(config, f, ... )     [MOLogger debug:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

#define MOLogVerbose(config, f, ... )   [MOLogger verbose:[NSString stringWithFormat:(f), ##__VA_ARGS__] label:nil sdkInstance:config]

NS_ASSUME_NONNULL_BEGIN

@interface MOObjCUtils : NSObject
+ (NSString*)getAppDelegateProxyInfoPlistKey;
+ (BOOL)isAppDelegateProxyEnabled;
+ (BOOL)isAppDelegateProxyConfigured;
+ (void)setAppDelegateProxyConfigured;
@end

NS_ASSUME_NONNULL_END
