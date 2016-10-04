//
//  MOInboxTableViewCell.m
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import "MOInboxTableViewCell.h"
#import "MOInbox.h"

@implementation MOInboxTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
}

-(void)setDataWithMessage:(MOInboxPushDataModel *)messageDict{
    
    @try {
        self.notificationTextLabel.numberOfLines = 0;
        self.notificationTextLabel.text = messageDict.alertMessage;
        [self.notificationTextLabel sizeToFit];
        [self setFontForMessage:messageDict];
        [self setPushTimeForMessage:messageDict];
    }
    @catch (NSException *exception) {
        NSLog(@"MoEngage - exception while setting data with message in inbox cell is %@", exception);
    }
}

// Set time of push notification
-(void)setPushTimeForMessage:(MOInboxPushDataModel *)messageDict{
    if(messageDict.pushTime){
        NSString *dateFormat = @"dd-MMM";
        NSDateFormatter *dateFormatter = [MOInbox dateFormatterWithFormat:dateFormat];
        NSDate *theDate = [NSDate dateWithTimeIntervalSince1970:[messageDict.pushTime integerValue]];
        NSString *dateStr = [dateFormatter stringFromDate:theDate];
        self.dateLabelTextLabel.text = dateStr;
    }else{
        self.dateLabelTextLabel.text = @"";
    }
}

// Set font for the notificationTextLabel label based on if it was read by user or not
-(void)setFontForMessage:(MOInboxPushDataModel *)messageDict{
    if(messageDict.isRead){
        if(self.notificationTextReadFont){
            self.notificationTextLabel.font = self.notificationTextReadFont;
        }else{
            self.notificationTextLabel.font = [MOInbox defaultTextFont];
        }
    }else{
        if(self.notificationTextUnreadFont){
            self.notificationTextLabel.font = self.notificationTextUnreadFont;
        }else{
            self.notificationTextLabel.font = [MOInbox defaultUnreadTextFont];
        }
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
