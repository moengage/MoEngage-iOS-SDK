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


/**
 MOInboxModel can be used to represent a notification entry in the user inbox.
 */
@interface MOInboxModel : NSObject <NSCoding>

/**
 Property which gives the unique ID for a moengage campaign, this will be unique for each notification entry in the inbox.
 */
@property(nonatomic, strong) NSString*  campaignID;

// Notification Payload
/**
 Notification payload
 */
@property(nonatomic, strong) NSDictionary* notificationPayloadDict;
/**
 Part of Notification payload present in "screenData" key. Contains the custom key-value pairs provided while creating the campaign
 */
@property(nonatomic, strong) NSDictionary* screenDataDict;
/**
 Part of Notification payload present in "moengage" key. Content of this key is for SDK internal use only.
 */
@property(nonatomic, strong, nullable) NSDictionary* moengageDict;

// Notifcation Content
/**
 This property gives the content of the title key in the notification payload
 */
@property(nonatomic, strong, nullable) NSString*  notificationTitle;

/**
 This property gives the content of the subtitle key in the notification payload
 */
@property(nonatomic, strong, nullable) NSString*  notificationSubTitle;

/**
 This property gives the content of the body key in the notification payload
 */
@property(nonatomic, strong, nullable) NSString*  notificationBody;

/**
 This property gives the content of the sound key in the notification payload, which represents the sound to play on receiving the notification.
 */
@property(nonatomic, strong, nullable) NSString*  notificationSound;

/**
 This property gives the URL of the media present along with the notification. Can be a image/gif/audio/video file URL.
 */
@property(nonatomic, strong, nullable) NSString*  notificationMediaURL;

// DeepLinking

/**
 screenName property gives Screen Name given while creating the campaign which can be used to navigate on clicking the notification in inbox
 */
@property(nonatomic, strong, nullable) NSString*  screenName;

/**
 deepLinkURL property gives the deeplink URL to navigate to on clicking the notification
 */
@property(nonatomic, strong, nullable) NSString*  deepLinkURL;

/**
 richLandingURL property gives the website URL to show in webview on clicking the notification
 */
@property(nonatomic, strong, nullable) NSString*  richLandingURL;

// Misc
/**
 Date property representing the notification received date.
 */
@property(nonatomic, strong, nullable) NSDate*    receivedDate;
/**
 Date property representing the notification clicked date, in case its clicked(isRead is true).
 */
@property(nonatomic, strong, nullable) NSDate*    clickedDate;
/**
 Date property representing the notification expiry date from the inbox, post the inbox expiry the notification will be deleted by the SDK.
 */
@property(nonatomic, strong, nullable) NSDate*    inboxExpiryDate;

/**
 Property represents if the notification is read by the user or not(clicked or not). True value indicates that the notification was clicked by the user.
 */
@property(nonatomic, assign) BOOL       isRead;

-(instancetype)initWithNotificationPayload:(NSDictionary*)payload;
-(instancetype)initWithLegacyInboxPlistPayload:(NSDictionary*)inboxEntryPayload;
-(void)updateClickedDate;
-(NSMutableDictionary*)getLegacyInboxPayload;

@end

NS_ASSUME_NONNULL_END
