//
//  MOInboxPushDataModel.h
//  MoEngage
//
//  Created by Gautam on 27/01/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOInboxPushDataModel : NSObject

@property(nonatomic, strong)    NSDictionary    *screenData;
@property(nonatomic, copy)      NSString        *campaignID;
@property(nonatomic, copy)      NSString        *screenName;
@property(nonatomic, copy)      NSString        *alertMessage;
@property(nonatomic, copy)      NSString        *pushTime;
@property(nonatomic, strong)    NSDictionary    *extraData;

@property(nonatomic, assign) BOOL isGiven;
@property(nonatomic, assign) BOOL isRead;

-(id)initWithDictionary:(NSMutableDictionary *)pushDictionary;

@end
