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

EXT NSString *const MO_EXP_STORYBOARD                   INIT_AS(@"MOInbox");
EXT NSString *const MO_EXP_STORYBOARD_INBOX             INIT_AS(@"Inbox");
EXT NSString *const MO_EXP_DATA                         INIT_AS(@"data");
EXT NSString *const MO_EXP_PUSH_APP_EXTRA               INIT_AS(@"app_extra");

EXT NSString *const MO_EXP_PUSH_TIME                    INIT_AS(@"c_cr_t");
EXT NSString *const MO_EXP_PUSH_ALERT                   INIT_AS(@"alert");
EXT NSString *const MO_EXP_PUSH_APS                     INIT_AS(@"aps");
EXT NSString *const MO_EXP_PUSH_IS_GIVEN                INIT_AS(@"isGiven");
EXT NSString *const MO_EXP_PUSH_IS_READ                 INIT_AS(@"isRead");


EXT NSString *const MO_EXP_PUSH_MOENGAGE                INIT_AS(@"moengage");

EXT NSString *const MO_STORYBOARD                       INIT_AS(@"MOInbox");
EXT NSString *const MO_STORYBOARD_INBOX                 INIT_AS(@"Inbox");
EXT NSString *const MO_DATA                             INIT_AS(@"data");
EXT NSString *const MO_PUSH_APP_EXTRA                   INIT_AS(@"app_extra");

EXT NSString *const MO_PUSH_MESSAGES_INFO               INIT_AS(@"messagesInfo");
EXT NSString *const MO_PUSH_SCREEN_DATA                 INIT_AS(@"screenData");
EXT NSString *const MO_PUSH_SCREEN_NAME                 INIT_AS(@"screenName");
EXT NSString *const MO_PUSH_TIME                        INIT_AS(@"c_cr_t");
EXT NSString *const MO_MEDIA_ATTACHMENT                 INIT_AS(@"media-attachment");
EXT NSString *const MO_PUSH_IS_GIVEN                    INIT_AS(@"isGiven");
EXT NSString *const MO_PUSH_IS_READ                     INIT_AS(@"isRead");
EXT NSString *const MO_INBOX_EXPIRY                     INIT_AS(@"inbox_expiry");
EXT NSString *const MO_LAST_UPDATED_INBOX               INIT_AS(@"MO_lastUpdatedTimeForInbox");
