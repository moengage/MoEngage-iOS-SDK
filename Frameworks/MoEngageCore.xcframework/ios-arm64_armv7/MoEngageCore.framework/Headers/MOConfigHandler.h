//
//  MOConfigHandler.h
//  MoEngageCore
//
//  Created by Chengappa C D on 12/10/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MOSDKConfig.h>
#import <MoEngageCore/MOLogger.h>

NS_ASSUME_NONNULL_BEGIN

@interface MOConfigHandler : NSObject

+(instancetype)sharedHandler;

/// Making the init method private as this Class has Singleton implementation
-(instancetype)init NS_UNAVAILABLE;

-(void)updateRemoteConfig;
-(void)updateSDKConfig:(MOSDKConfig*)sdkConfig;
-(void)logCurrentConfigInfo;
-(void)logCurrentSDKConfigInfo;
-(void)logCurrentRemoteConfigInfo;

-(MOSDKConfig*)getDefaultSDKConfiguration;
@end

NS_ASSUME_NONNULL_END
