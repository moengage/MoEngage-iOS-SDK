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

#import <MORichNotification/MOPushTemplateHandler.h>
#import <MORichNotification/MOPushPayload.h>
#import <MORichNotification/MORichPushMode.h>
#import <MORichNotification/MORichPush.h>
#import <MORichNotification/MOPushCard.h>
#import <MORichNotification/MOPushWidget.h>
#import <MORichNotification/MOPushAction.h>
#import <MORichNotification/MOMedia.h>

NS_ASSUME_NONNULL_BEGIN

API_AVAILABLE(ios(10))
@interface MORichNotification : NSObject

/// Method to let SDK show Rich Notification
/// @param request UNNotificationRequest instance containing Remote notification info
/// @param contentHandler Content Handler completion block to called after notification is processed
+(void)handleRichNotificationRequest:(UNNotificationRequest*)request withContentHandler:(void (^)(UNNotificationContent *))contentHandler;

/// Method to enable logs to debug. By default the logs aren't shown.
/// @param shouldEnableDebug flag indicating to enable SDK logs
+(void)enableDebugging:(BOOL)shouldEnableDebug;

/// Method to set the App Group ID for Notification impression tracking.
/// @param appGroupID app group Id
+(void)setAppGroupID:(NSString*)appGroupID;

/// Method to support rich notifications for Local notifications
/// @param request UNNotificationRequest instance containing Local notification info
/// @param completionHandler Content Handler completion block to called after notification is processed
+(void)getLocalNotificationContentForRequest:(UNNotificationRequest*)request withCompletionHandler:(void (^)(UNNotificationContent *))completionHandler;;

@end


NS_ASSUME_NONNULL_END
