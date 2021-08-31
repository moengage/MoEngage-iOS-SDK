//
//  MORichPushPayload.h
//  MORichNotification
//
//  Created by Chengappa C D on 31/01/20.
//  Copyright © 2020 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MORichPush.h"

NS_ASSUME_NONNULL_BEGIN


@interface MOPushPayload : NSObject

@property(nonatomic, strong, nullable) NSDictionary* pushPayloadDict;
@property(nonatomic, strong, nullable) NSDictionary* moengageDict;
@property(nonatomic, strong, nullable) NSString* campaignID;
@property(nonatomic, strong, nullable) NSString* moeAppId;

@property(nonatomic, strong, nullable) NSString* mediaAttachment;
@property(nonatomic, strong, nullable) NSString* mediaType;
@property(nonatomic, strong, nullable) MORichPush* richPush;

-(instancetype)initWithPushPayload:(NSDictionary* _Nullable)pushPayload;

-(BOOL)shouldProcessPushNotification;

@end

NS_ASSUME_NONNULL_END
