//
//  MOPushTemplateHandler.h
//  MORichNotification
//
//  Created by Chengappa C D on 31/01/20.
//  Copyright © 2020 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>

NS_ASSUME_NONNULL_BEGIN
API_AVAILABLE(ios(12.0))
@interface MOPushTemplateHandler : NSObject

+(instancetype)sharedInstance;

/// Method to add Custom Push Template to the Notification Content Extension ViewController
/// @param controller ViewController instance to which the template needs to be added
/// @param notification UNNotification instance with notification info
-(void)addPushTemplateToController:(UIViewController<UNNotificationContentExtension>*)controller withNotification:(UNNotification *)notification;

-(void)performDefaultAction;

-(void)performCardActionWithInfo:(NSMutableDictionary*)clickedCardInfo;
@end

NS_ASSUME_NONNULL_END
