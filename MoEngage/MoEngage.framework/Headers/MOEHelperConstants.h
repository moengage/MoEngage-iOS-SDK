//
//  MOEHelperConstants.h
//  MoEngage
//
//  Created by MoEngageDev on 10/16/14.
//  Copyright (c) 2014 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOEHelperConstants : NSObject

/*
 Unique id is the identity of the user, like an email id or a phone no. or anything account specific.
 You should set this ID once the user logs in. This will help to preserve the identity of the user across sessions and devices.
 */
extern NSString* const USER_ATTRIBUTE_UNIQUE_ID;

extern NSString* const USER_ATTRIBUTE_USER_EMAIL;
extern NSString* const USER_ATTRIBUTE_USER_MOBILE;
extern NSString* const USER_ATTRIBUTE_USER_NAME;
extern NSString* const USER_ATTRIBUTE_USER_GENDER;
extern NSString* const USER_ATTRIBUTE_USER_FIRST_NAME;
extern NSString* const USER_ATTRIBUTE_USER_LAST_NAME;
extern NSString* const USER_ATTRIBUTE_USER_BDAY;
extern NSString* const GENDER_MALE;
extern NSString* const GENDER_FEMALE;

/*
 @see MoEngage.h for method setUserAttributeLocationLatitude: longitude: forKey: 
 You can use this key in that method or add a custom key if desired.
 */
extern NSString* const USER_ATTRIBUTE_USER_LOCATION;

/*
 Only for Segment,React Native and Cordova Plugins
 */
extern NSString* const MoEngage_Cordova_SDK_Version;
extern NSString* const MoEngage_React_Native_SDK_Version;
extern NSString* const MoEngage_Segment_SDK_Version;
extern NSString* const MoEngage_Xamarin_SDK_Version;
extern NSString* const MoEngage_Flutter_SDK_Version;

extern NSString* const MoEngage_Device_Token_Key;
extern NSString* const MoEngage_Notification_Settings_Key;

extern NSString* const MoEngage_Notification_Received_Notification;
extern NSString* const MoEngage_Notification_Registered_Notification;
extern NSString* const MoEngage_Notification_Registration_Failed_Notification;
extern NSString* const MoEngage_Notification_UserSettings_Registered_Notification;

@end
