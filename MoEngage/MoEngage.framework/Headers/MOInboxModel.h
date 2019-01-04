//
//  MOInboxModel.h
//  MoEngage
//
//  Created by Chengappa C D on 31/10/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface MOInboxData : NSObject<NSCoding>
@property NSArray  *inboxMessages;
@property NSDate   *lastUpdatedFromServerSync;

@end

@interface MOInboxModel : NSObject <NSCoding>

@property(nonatomic, strong) NSString*  campaignID;

// Notification Payload
@property(nonatomic, strong) NSDictionary* notificationPayloadDict;
@property(nonatomic, strong) NSDictionary* screenDataDict;
@property(nonatomic, strong, nullable) NSDictionary* moengageDict;

// Notifcation Content
@property(nonatomic, strong, nullable) NSString*  notificationTitle;
@property(nonatomic, strong, nullable) NSString*  notificationSubTitle;
@property(nonatomic, strong, nullable) NSString*  notificationBody;
@property(nonatomic, strong, nullable) NSString*  notificationSound;
@property(nonatomic, strong, nullable) NSString*  notificationMediaURL;

// DeepLinking
@property(nonatomic, strong, nullable) NSString*  screenName;
@property(nonatomic, strong, nullable) NSString*  deepLinkURL;
@property(nonatomic, strong, nullable) NSString*  richLandingURL;

// Misc
@property(nonatomic, strong, nullable) NSDate*    receivedDate;
@property(nonatomic, strong, nullable) NSDate*    clickedDate;
@property(nonatomic, strong, nullable) NSDate*    inboxExpiryDate;
@property(nonatomic, assign) BOOL       isRead;

-(instancetype)initWithNotificationPayload:(NSDictionary*)payload;
-(instancetype)initWithLegacyInboxPlistPayload:(NSDictionary*)inboxEntryPayload;

-(void)updateClickedDate;

-(NSMutableDictionary*)getLegacyInboxPayload;

@end

NS_ASSUME_NONNULL_END
