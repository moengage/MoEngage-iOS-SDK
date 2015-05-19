//
//  MOInbox.h
//  MoEngage
//
//  Created by Gautam on 05/03/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOInboxViewController.h"

@interface MOInbox : NSObject

+(MOInboxViewController *)initializeInboxOnController:(UIViewController *)controller;
+(NSArray *)getInboxMessages;

@end
