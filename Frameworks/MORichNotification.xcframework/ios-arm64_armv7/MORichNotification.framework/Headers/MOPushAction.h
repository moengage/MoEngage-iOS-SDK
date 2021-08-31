//
//  MOPushAction.h
//  MORichNotification
//
//  Created by Chengappa C D on 26/02/20.
//  Copyright © 2020 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    NAV_RICH_LANDING,
    NAV_DEEP_LINKING,
    NAV_SCREEN,
    NAV_UNKNOWN
}MONavigationType;

typedef enum {
    ACTION_NAVIGATION,
    ACTION_COUPON_CODE,
    ACTION_UNKNOWN
}MOActionType;

@interface MOPushAction : NSObject

@property(assign, nonatomic) MOActionType actionName;
@property(assign, nonatomic) MONavigationType actionType;

@property(strong, nonatomic) id value;
@property(strong, nonatomic, nullable) NSDictionary* kvPairs;

-(instancetype)initWithDictionary:(NSDictionary*)actionDict;
@end

NS_ASSUME_NONNULL_END
