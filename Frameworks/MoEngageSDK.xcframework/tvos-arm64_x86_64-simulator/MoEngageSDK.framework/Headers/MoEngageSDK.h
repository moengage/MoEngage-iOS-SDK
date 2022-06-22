//
//  MoEngageSDKTvOS.h
//  MoEngageSDKTvOS
//
//  Created by Rakshitha on 10/02/22.
//  Copyright © 2022 MoEngage. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for MoEngage.
FOUNDATION_EXPORT double MoEngageVersionNumber;

//! Project version string for MoEngage.
FOUNDATION_EXPORT const unsigned char MoEngageVersionString[];

#if !defined(__has_include)
#error "MoEngage.h won't be able to import all the modules if your compiler doesn't support __has_include. Please import the headers individually."
#else
    #import <MOCore/MOCore-Swift.h>
    
    #if __has_include(<MoEngageAnalytics/MoEngageAnalytics-Swift.h>)
        #import <MoEngageAnalytics/MoEngageAnalytics-Swift.h>
    #endif

    #if __has_include(<MoEngageMessaging/MoEngageMessaging-Swift.h>)
        #import <MoEngageMessaging/MoEngageMessaging-Swift.h>
    #endif

    #if __has_include(<MoEngageInbox/MoEngageInbox-Swift.h>)
        #import <MoEngageInbox/MoEngageInbox-Swift.h>
    #endif

    #if __has_include(<MoEngageCards/MoEngageCards-Swift.h>)
        #import <MoEngageCards/MoEngageCards-Swift.h>
    #endif

    #if __has_include(<MoEngageGeofence/MoEngageGeofence-Swift.h>)
        #import <MoEngageGeofence/MoEngageGeofence-Swift.h>
    #endif

    #if __has_include(<MoEngageInApps/MoEngageInApps.h>)
        #import <MoEngageInApps/MoEngageInApps.h>
    #endif
    
    #if __has_include(<MoEngageRealTimeTrigger/MoEngageRealTimeTrigger-Swift.h>)
       #import <MoEngageRealTimeTrigger/MoEngageRealTimeTrigger-Swift.h>
    #endif

#endif

#import <MoEngageSDK/MoEngage.h>
