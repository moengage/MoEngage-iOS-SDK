//
//  MOInboxConstants.h
//  MoEngage
//
//  Created by Gautam on 14/08/15.
//  Copyright © 2015 alphadevs. All rights reserved.
//


#import <Foundation/Foundation.h>

#ifdef APP_DEFINE_CONSTANTS
#define EXTERN
#define INITIALIZE_AS(x) = x
#else
#define EXTERN extern
#define INITIALIZE_AS(x)
#endif

#pragma mark - Inbox Constants

EXTERN NSString *const MO_STORYBOARD                    INITIALIZE_AS(@"MOInbox");
EXTERN NSString *const MO_STORYBOARD_INBOX              INITIALIZE_AS(@"Inbox");
EXTERN NSString *const MO_DATA                          INITIALIZE_AS(@"data");
EXTERN NSString *const MO_PUSH_APP_EXTRA                INITIALIZE_AS(@"app_extra");

EXTERN NSString *const MO_PUSH_MESSAGES_INFO            INITIALIZE_AS(@"messagesInfo");
EXTERN NSString *const MO_PUSH_SCREEN_DATA              INITIALIZE_AS(@"screenData");
EXTERN NSString *const MO_PUSH_SCREEN_NAME              INITIALIZE_AS(@"screenName");
EXTERN NSString *const MO_PUSH_TIME                     INITIALIZE_AS(@"c_cr_t");
EXTERN NSString *const MO_PUSH_ALERT                    INITIALIZE_AS(@"alert");
EXTERN NSString *const MO_PUSH_APS                      INITIALIZE_AS(@"aps");
EXTERN NSString *const MO_PUSH_IS_GIVEN                 INITIALIZE_AS(@"isGiven");
EXTERN NSString *const MO_PUSH_IS_READ                  INITIALIZE_AS(@"isRead");
