//
//  MONotificationCategory.h
//  MoEngage
//
//  Created by Chengappa on 04/04/16.
//  Copyright © 2016 MoEngage Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MONotificationCategory : UIMutableUserNotificationCategory

/**
 Use this method to set the actions for the category
 @param actions The array of actions in the category
 @param context The context of the notification. We support only minimal context for now = UIUserNotificationActionContextMinimal
 */
-(void)setActions:(NSArray<UIUserNotificationAction *> *)actions forContext:(UIUserNotificationActionContext)context;

@property(nonatomic, strong, readonly) NSMutableArray *minimalContextActions;

@end
