//
//  MOInboxExposedConstants.h
//  MoEngage
//
//  Created by Gautam on 18/08/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef APP_DEFINE_INBOX_CONSTANTS
#define EXT
#define INIT_AS(x) = x
#else
#define EXT extern
#define INIT_AS(x)
#endif

#pragma mark - Inbox Exposed Constants

EXT NSString *const MO_EXP_STORYBOARD                    INIT_AS(@"MOInbox");
EXT NSString *const MO_EXP_STORYBOARD_INBOX              INIT_AS(@"Inbox");
EXT NSString *const MO_EXP_DATA                          INIT_AS(@"data");
EXT NSString *const MO_EXP_PUSH_APP_EXTRA                INIT_AS(@"app_extra");

EXT NSString *const MO_EXP_PUSH_TIME                     INIT_AS(@"c_cr_t");
EXT NSString *const MO_EXP_PUSH_ALERT                    INIT_AS(@"alert");
EXT NSString *const MO_EXP_PUSH_APS                      INIT_AS(@"aps");
EXT NSString *const MO_EXP_PUSH_IS_GIVEN                 INIT_AS(@"isGiven");
EXT NSString *const MO_EXP_PUSH_IS_READ                  INIT_AS(@"isRead");
