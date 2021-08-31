//
//  MOKeychain.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Security/Security.h>

@interface MOKeychain : NSObject

+ (id)load:(NSString *)service;
+ (void)remove:(NSString *)service;
+ (void)save:(NSString *)service data:(id)data;
+ (NSString *)keychainItem:(NSString *)service;
+ (NSString *)createDeviceUniqueIDForService:(NSString *)service;

@end
