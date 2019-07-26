//
//  MOInboxViewController.h
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Conform to this delegate to get the data of the notification when the user taps on a cell
 */
@protocol MOInboxCellSelectedDelegate <NSObject>
@optional
/**
 This delegate method is called when a inbox cell is clicked
 @param pushDict - entire push Payload for the inbox cell selected
 */
-(void)inboxCellSelectedWithPushDict:(NSDictionary *)pushDict;

/**
 This delegate method is called when a inbox cell is clicked
 @param dataDict -  gives only the screenData dict in the push Payload containing custom key-value pairs for the inbox cell selected
 */
-(void)inboxCellSelectedWithData:(NSDictionary *)dataDict;
@end

/**
 MOInboxViewController gives a default UI for showing the list of notifications received by the user.
 */
@interface MOInboxViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

/**
 Property to set the background color of the inbox table view
 */
@property(nonatomic, strong) UIColor *tableBackgroundColor;

/**
 Property to set the title of the controller showing the inbox data
 */
@property(nonatomic, strong) NSString *inboxTitle;

/**
 shouldProcessNotificationActions Bool property decides if the notification action has to be processed on inbox cell selection
 */
@property(nonatomic, assign) BOOL shouldProcessNotificationActions;

/**
 Set this delegate to get the callbacks on clicking the inbox cell
 */
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
