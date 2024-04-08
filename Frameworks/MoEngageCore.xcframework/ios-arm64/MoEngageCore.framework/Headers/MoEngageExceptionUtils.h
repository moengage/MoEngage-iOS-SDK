//
//  MoEngageExceptionUtils.h
//  MoEngageObjCUtils
//
//  Created by Soumya Ranjan Mahunt on 19/03/24.
//  Copyright © 2024 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class MoEngageSDKInstance;

@interface MoEngageExceptionUtils : NSObject

+(void)catchExceptionForAction:(void (^)(void))action onError:(void (^)(NSError*))errorAction;

@end

NS_ASSUME_NONNULL_END
