//
//  MOInboxViewController.h
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Conform to this delegate to get the data of the notification when the user taps on a cell
 */
@protocol MOInboxCellSelectedDelegate <NSObject>
@optional
-(void)inboxCellSelectedWithData:(NSDictionary *)dataDict;
@end

@interface MOInboxViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) UIColor *tableBackgroundColor;
@property(nonatomic, strong) NSString *inboxTitle;

@property(nonatomic, weak) id <MOInboxCellSelectedDelegate> delegate;

/**
 Use this method to customise the inbox cell. 
 @param cellTextColor       - The color of the notification alert text
 @param cellTextFont        - The font of the notification alert text for read/tapped messages
 @param cellUnreadTextFont  - The font of the notification alert text for messages not read/tapped by the user
 @param dateTextColor       - The color of the date of the notification
 @param dateTextFont        - The font of the date
 @param cellBGColor         - The background color the inbox cell
 */
-(void)customiseInboxWithCellTextColor:(UIColor *)cellTextColor fontForReadMsg:(UIFont *)cellTextFont fontForUnreadMsg:(UIFont *)cellUnreadTextFont dateTextColor:(UIColor *)dateTextColor font:(UIFont *)dateTextFont cellBackgroundColor:(UIColor *)cellBGColor;

@end
