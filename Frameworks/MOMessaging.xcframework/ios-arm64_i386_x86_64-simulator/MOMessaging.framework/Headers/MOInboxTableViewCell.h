//
//  MOInboxTableViewCell.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MOInboxModel.h"

@interface MOInboxTableViewCell : UITableViewCell

@property(nonatomic, weak) IBOutlet UILabel *notificationTitleTextLabel;
@property(nonatomic, weak) IBOutlet UILabel *notificationTextLabel;
@property(nonatomic, weak) IBOutlet UILabel *dateLabelTextLabel;

-(void)setDataWithMessage:(MOInboxModel*)inbox_entry;

@end
