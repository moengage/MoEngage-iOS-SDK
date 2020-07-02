//
//  MONotificationCategory.h
//  MoEngage
//
//  Created by Chengappa on 04/04/16.
//  Copyright © 2016 MoEngage Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Use MONotificationCategory of type UIMutableUserNotificationCategory to support Actionable notifications in iOS version below iOS10, post iOS 10 UNNotificationCategory is being used.
 */
API_DEPRECATED("MONotificationCategory is for iOS version below iOS 10.0", ios(8.0, 9.3.5))
@interface MONotificationCategory : UIMutableUserNotificationCategory

/**
 Use this method to set the actions for the category
 @param actions The array of actions in the category
 @param context The context of the notification. We support only minimal context for now = UIUserNotificationActionContextMinimal
 */
-(void)setActions:(NSArray<UIUserNotificationAction *> *)actions forContext:(UIUserNotificationActionContext)context;

@property(nonatomic, strong, readonly) NSMutableArray *minimalContextActions;

@end
