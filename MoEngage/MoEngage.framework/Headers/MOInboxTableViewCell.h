//
//  MOInboxTableViewCell.h
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MOInboxModel.h"

@interface MOInboxTableViewCell : UITableViewCell

@property(nonatomic, weak) IBOutlet UILabel *notificationTitleTextLabel;
@property(nonatomic, weak) IBOutlet UILabel *notificationTextLabel;
@property(nonatomic, weak) IBOutlet UILabel *dateLabelTextLabel;

-(void)setDataWithMessage:(MOInboxModel*)inbox_entry;

@end
