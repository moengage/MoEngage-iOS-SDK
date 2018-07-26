//
//  MOInbox.h
//  MoEngage
//
//  Created by Gautam on 05/03/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOInboxViewController.h"
#import "MOInboxPushDataModel.h"

@interface MOInbox : NSObject

#pragma MoEngage methods

+(void)writeArrayToFile:(NSMutableArray *)anArray;
+(NSDateFormatter *)dateFormatterWithFormat:(NSString *)format;


#pragma Utility methods

/**
 This method returns the height of the text for the text with the specified height, width and font.
 @param text The text 
 @param widthValue The width 
 @param font The font of the text. If not specified, system font will be used.
 */
+(CGFloat)findHeightForText:(NSString *)text havingWidth:(CGFloat)widthValue andFont:(UIFont *)font;

/**
 This method returns the current width of the screen
 */
+(CGFloat)screenWidth;

/**
 This method returns the current height of the screen
 */
+(CGFloat)screenHeight;

/**
 This method returns @"HelveticaNeue"
 */
+(NSString *)helveticaFont;

#pragma Inbox methods

/**
 This methods add the inbox view controller as a child view controller to your controller. Alternatively, you can initialize and add inbox view controller as per your need. It is open source.
 @param controller This is your view controller. You will pass self here.
 */
+(MOInboxViewController *)initializeInboxOnController:(UIViewController *)controller;

/**
 Use this method to get all the inbox messages in the storage. Max no. of messages stored = 100
 */
+(NSArray *)getInboxMessages;

/**
 This is AvenirNext-Regular size-16
 */
+(UIFont *)defaultTextFont;

/**
  This is AvenirNext-Bold size-16
 */
+(UIFont *)defaultUnreadTextFont;

/**
 Use this method to get new inbox notifications. Reload table if new messages == YES, to get the new messages in the Inbox instantly.
 */
+(void)fetchInboxMessagesWithCompletion:(void(^) (BOOL newMessages))completion;

/**
 Method to mark an inbox notification as read by providing the campaign ID.
 @param cid The Campaign ID of the notification to be marked as read.
 @return Updated Dictionary of the notification payload after marking it as Read
 */
+(NSMutableDictionary*)markNotificationReadWithCampaignID:(NSString*)cid;

/**
 Track notification click for notification in Inbox using this method.
 @param campaignObj An MOInboxPushDataModel instance of the notification to be marked as read.
 @param isFirstClick Bool value indicating if this is the first time user is clicking the notification in Inbox.
 */
+(void)trackInboxNotificationClickForCampaign:(MOInboxPushDataModel*)campaignObj andIsFirstClick:(BOOL)isFirstClick;


/**
 Method to process default notification actions(i.e, deeplinks, rich-landing and coupon code etc.)

 @param pushObj MOInboxPushDataModel Instance of the push campaign
 */
+(void)processInboxNotificationOnClickForCampaign:(MOInboxPushDataModel*)pushObj;

/**
 Method to remove all the notifications currently stored in notification center
 */
+(void)removeInboxMessages;

@end
