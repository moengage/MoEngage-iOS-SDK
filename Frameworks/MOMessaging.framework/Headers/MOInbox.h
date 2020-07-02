//
//  MOInbox.h
//  MOInbox
//
//  Created by Chengappa C D on 14/11/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOInboxViewController.h"
#import "MOInboxModel.h"

@interface MOInbox : NSObject

#pragma mark- Initialization method

/**
 This methods add the inbox view controller as a child view controller to your controller. Alternatively, you can initialize and add inbox view controller as per your need. It is open source.
 @param controller This is your view controller. You will pass self here.
 */
+(MOInboxViewController *)initializeInboxOnController:(UIViewController *)controller;


#pragma mark- Fetch message methods

/**
 Method to fetch the notifcations in Inbox
 
 @param completionBlock Completion Block where you will get list of Inbox Messages
 */
+(void)getInboxMessagesWithCompletionBlock:(void(^) (NSArray<MOInboxModel*>* inboxMessages))completionBlock;

/**
 Use this method to sync inbox notifications.
 
 @param completion Completion Block is called indicating the sync is complete
 
 */
+(void)fetchInboxMessagesWithCompletion:(void(^) (BOOL newMessages))completion;

#pragma mark- Inbox Clicks

/**
 Method to process Inbox Notification of given Campaign ID
 
 @param campaignID The Campaign ID of the notification to be processed.
 */
+(void)processInboxNotificationWithCampaignID:(NSString*)campaignID;

/**
 Method to mark Inbox Notification as read of given Campaign ID
 
 @param campaignID The Campaign ID of the notification to be marked as read.
 */
+(void)markInboxNotificationClickedWithCampaignID:(NSString*)campaignID;

/**
 Method to track Notification click for a campaign in Inbox
 
 @param campaignID The Campaign ID of the notification for which click has to be tracked.
 */
+(void)trackInboxNotificationClickWithCampaignID:(NSString*)campaignID;

#pragma mark- Remove notifications Methods

/**
 Method to remove all the notifications currently stored in notification center
 */
+(void)removeInboxMessages;

/**
 Method to remove a particular notification stored in notification center with Campaign ID
 
 @param cid The Campaign ID of the notification to be deleted.
 */
+(void)removeMessageWithCampaignID:(NSString*)cid;

#pragma mark- Utils Methods
/**
 Method to get NSDateFormatter instance for given format
 */
+(NSDateFormatter *)dateFormatterWithFormat:(NSString *)format;

/**
 This is AvenirNext-Regular size-16
 */
+(UIFont *)defaultTextFont;

/**
 This is AvenirNext-Bold size-16
 */
+(UIFont *)defaultUnreadTextFont;


/**
 Method to get total notification count in the User Inbox

 @return Total number of notifications in User Inbox in Integer
 */
+(NSInteger)getAllNotificationCount;

/**
 Method to get unread notification count in the User Inbox
 
 @return Unread notifications count in User Inbox in Integer
 */
+(NSInteger)getUnreadNotifictionCount;

@end
