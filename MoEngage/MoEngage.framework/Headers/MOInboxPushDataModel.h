//
//  MOInboxPushDataModel.h
//  MoEngage
//
//  Created by Gautam on 27/01/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

__deprecated_msg("This class will be removed from SDK Version 5.0.0. Use MOInboxModel instead.")
@interface MOInboxPushDataModel : NSObject


@property(nonatomic, copy)    NSString        *campaignID;

@property(nonatomic, copy)    NSDictionary    *pushDict;
@property(nonatomic, copy)    NSDictionary    *extraData;
@property(nonatomic, copy)    NSDictionary    *screenData;

@property(nonatomic, copy)    NSString        *alertTitle;
@property(nonatomic, copy)    NSString        *alertSubTitle;
@property(nonatomic, copy)    NSString        *alertMessage;
@property(nonatomic, copy)    NSString        *alertSound;

// NSDate instances which gives push notification created time and inbox expiry time in system timezone.
@property(nonatomic, copy)    NSDate          *pushCreateTime;
@property(nonatomic, copy)    NSDate          *inboxExpiryTime;

@property(nonatomic, copy)    NSString        *screenName;
@property(nonatomic, copy)    NSString        *pushTime;
@property(nonatomic, copy)    NSString        *mediaAttachmentURL;

@property(nonatomic, assign)  BOOL isGiven;
@property(nonatomic, assign)  BOOL isRead;

-(id)initWithDictionary:(NSMutableDictionary *)pushDictionary;

@end
