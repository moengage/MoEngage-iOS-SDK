//
//  MOInboxPushDataModel.h
//  MoEngage
//
//  Created by Gautam on 27/01/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOInboxPushDataModel : NSObject

@property(nonatomic, strong)    NSDictionary    *screenData;
@property(nonatomic, copy)      NSString        *campaignID;
@property(nonatomic, copy)      NSString        *screenName;

@property(nonatomic, copy)      NSString        *alertTitle;
@property(nonatomic, copy)      NSString        *alertSubTitle;
@property(nonatomic, copy)      NSString        *alertMessage;
@property(nonatomic, copy)      NSString        *alertSound;

@property(nonatomic, copy)      NSString        *pushTime;

@property(nonatomic, strong)    NSDictionary    *extraData;

@property(nonatomic, strong)    NSDictionary    *pushDict;
@property(nonatomic, strong)    NSString        *mediaAttachmentURL;

@property(nonatomic, assign) BOOL isGiven;
@property(nonatomic, assign) BOOL isRead;

// NSDate instances which gives push notification created time and inbox expiry time in system timezone.
@property(nonatomic, assign) NSDate* pushCreateTime;
@property(nonatomic, assign) NSDate* inboxExpiryTime;

-(id)initWithDictionary:(NSMutableDictionary *)pushDictionary;

@end
