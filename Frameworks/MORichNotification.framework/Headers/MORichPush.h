//
//  MORichPush.h
//  MORichNotification
//
//  Created by Chengappa C D on 27/02/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MORichPushMode.h"
#import "MOPushAction.h"

NS_ASSUME_NONNULL_BEGIN

@interface MORichPush : NSObject

@property(nonatomic, strong, nullable) NSString* title;
@property(nonatomic, strong, nullable) NSString* subTitle;
@property(nonatomic, strong, nullable) NSString* body;

@property(nonatomic, strong, nullable) NSString* category;
@property(nonatomic, strong, nullable) NSString* sound;

@property(nonatomic, strong, nullable) NSString* templateDisplayName;
@property(nonatomic, strong, nullable) MORichPushMode* expandedMode;
@property(nonatomic, strong, nullable) MORichPushMode* collapsedMode;
@property(nonatomic, strong, nullable) NSArray<MOPushAction*>* defaultActions;

-(instancetype)initWithDictionary:(NSDictionary* _Nullable)richPushDict;
@end

NS_ASSUME_NONNULL_END
