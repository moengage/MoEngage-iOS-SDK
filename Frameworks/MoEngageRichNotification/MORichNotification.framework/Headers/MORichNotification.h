//
//  MORichNotification.h
//  MORichNotification
//
//  Created by Chengappa C D on 26/09/16.
//  Copyright © 2016 MoEngage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <UserNotifications/UserNotifications.h>

//! Project version number for MORichNotification.
FOUNDATION_EXPORT double MORichNotificationVersionNumber;

//! Project version string for MORichNotification.
FOUNDATION_EXPORT const unsigned char MORichNotificationVersionString[];

@interface MORichNotification : NSObject
/**
 *  Method to let SDK show Rich Notification
 */
+(void)handleRichNotificationRequest:(UNNotificationRequest*)request withContentHandler:(void (^)(UNNotificationContent *))contentHandler;

/**
 *  Method to download and get attachment instance present in the notification request
 */
+(void)getAttachmentFromNotificationRequest:(UNNotificationRequest*)request withCompletionBlock:(void (^)(UNNotificationAttachment*))completionBlock;

/**
 * Method to enable logs to debug. By default the logs aren't shown.
 */
+(void)enableDebugging:(BOOL)shouldEnableDebug;

/*
 * Method to set the App Group ID for Notification impression tracking.
 */
+(void)setAppGroupID:(NSString*)appGroupID;

/**
 Method to update badge on receiving the Notification

 @param bestAttemptContent Mutable Content instance to update badge
 */
+(void)updateBadgeWithNotificationContent:(UNMutableNotificationContent*)bestAttemptContent;

@end

