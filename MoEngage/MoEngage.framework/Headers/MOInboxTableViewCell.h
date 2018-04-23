//
//  MOInboxTableViewCell.h
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MOInboxPushDataModel.h"

@interface MOInboxTableViewCell : UITableViewCell

@property(nonatomic, weak) IBOutlet UILabel *notificationTextLabel;
@property(nonatomic, weak) IBOutlet UILabel *dateLabelTextLabel;

@property(nonatomic, strong) UIFont *notificationTextReadFont;
@property(nonatomic, strong) UIFont *notificationTextUnreadFont;

-(void)setDataWithMessage:(MOInboxPushDataModel *)messageDict;

@end
