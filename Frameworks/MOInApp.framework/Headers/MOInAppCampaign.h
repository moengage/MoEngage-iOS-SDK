//
//  MOInAppCampaign.h
//  MOInApp
//
//  Created by Chengappa C D on 06/11/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MoEngageCore.h>

NS_ASSUME_NONNULL_BEGIN

/// MOActionType defines the action type performed by the inApp click
typedef enum : NSUInteger {
    NavigationAction,
    CustomAction
} MOActionType;


/// MOInAppCampaign gives all the information about the inApp campaign
@interface MOInAppCampaign : MOModelObject

/// A unique Id to identify the campaign
@property(nonatomic, strong) NSString*  campaign_id;

/// Campaign name provided while creating the campaign
@property(nonatomic, strong) NSString*  campaign_name;

/// NSDate instance of the expiry time of the campaign
@property(nonatomic, strong) NSDate*    expiry_time;

/// isDraft is a flag which provides info if the campaign is a draft being shown for testing purpose
@property(nonatomic, assign) BOOL       isDraft;
@end



/// MOInAppSelfHandledCampaign gives all the information required for a self-handled inApp campaign
@interface MOInAppSelfHandledCampaign : MOInAppCampaign

/// campaignContent provides information entered while creating a self-handled inapp campaign
@property(nonatomic, strong) NSString* campaignContent;

/// In case auto dismiss was provided while creating the self-handled inapp campaign, the same will be provided here. By default the value will be -1.
@property(nonatomic, assign) NSInteger autoDismissInterval;
@end



/// Model object for giving information on the action performed by inApp Campaign
@interface MOInAppAction : MOModelObject

/// Gives the action type Navigation/Custom Action
@property(nonatomic, assign) MOActionType actionType;

/// Incase the action type is Navigation then the screenName to which the navigation has to be performed
@property(nonatomic, strong) NSString* screenName;

/// Custom key-value pairs entered while creating the campaign for the action.
@property(nonatomic, strong) NSDictionary* keyValuePairs;
@end


NS_ASSUME_NONNULL_END
