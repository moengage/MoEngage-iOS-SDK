//
//  MOEHelperConstants.h
//  MoEngage
//
//  Created by apple on 10/16/14.
//  Copyright (c) 2014 alphadevs. All rights reserved.
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

@end
