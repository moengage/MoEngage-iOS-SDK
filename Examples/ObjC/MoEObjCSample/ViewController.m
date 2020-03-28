//
//  ViewController.m
//  MoEngageObjCIntegration
//
//  Created by Chengappa C D on 03/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import "ViewController.h"
#import <MoEngage/MoEngage.h>
#import <MOGeofence/MOGeofence.h>

@interface ViewController () <MOInAppNativDelegate>

@end

@implementation ViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [MOInApp sharedInstance].inAppDelegate = self;
    
    // Geofence Monitoring
    [[MOGeofenceHandler sharedInstance] startGeofenceMonitoring];
    
    // Track User Attributes
    [self trackUserAttributes];
    
    // Track Event
    [self trackEvents];
    
    // Show InApp
    [[MOInApp sharedInstance] showInApp];
}


-(void)trackEvents{
    // track event example
    NSMutableDictionary* eventAttrDict = [NSMutableDictionary dictionary];
    eventAttrDict[@"Product"] = @"iPhone XS Max";
    eventAttrDict[@"BrandName"] = @"Apple";
    eventAttrDict[@"Items In Stock"] = @109;
    
    MOProperties* eventProperties = [[MOProperties alloc] initWithAttributes:eventAttrDict];
    [eventProperties addAttribute:@87000.00 withName:@"price"];
    [eventProperties addAttribute:@"Rupees" withName:@"currency"];
    [eventProperties addAttribute:[NSNumber numberWithBool:true] withName:@"in_stock"];
    
    [eventProperties addDateEpochAttribute:1439322197 withName:@"Time added to cart"];
    [eventProperties addDateISOStringAttribute:@"2020-02-22T12:37:56Z" withName:@"Time of checkout"];
    [eventProperties addDateAttribute:[NSDate date] withName:@"Time of purchase"];

    MOGeoLocation* pickupLocation = [[MOGeoLocation alloc] initWithLatitude:12.23 andLongitude:9.23];
    [eventProperties addLocationAttribute:pickupLocation withName:@"Pickup Location"];
    
    [[MoEngage sharedInstance] trackEvent:@"Successful Purchase" withProperties:eventProperties];
    
}


-(void)trackUserAttributes{
    //Default Attributes
    [[MoEngage sharedInstance] setUserName:@"MoE Test User"];
    [[MoEngage sharedInstance] setUserLastName:@"Test User"];
    [[MoEngage sharedInstance] setUserFirstName:@"MoE"];
    [[MoEngage sharedInstance] setUserEmailID:@"test@moengage.com"];
    [[MoEngage sharedInstance] setUserMobileNo:@"+91-9799799799"];
    [[MoEngage sharedInstance] setUserGender:MALE]; // Use UserGender enumerator for this
    [[MoEngage sharedInstance] setUserDateOfBirth:[NSDate date]];//userBirthdate should be a NSDate instance
    [[MoEngage sharedInstance] setUserLocationLatitude:12.98675 andLongitude:73.456666];
    
    //Custom User Attribute tracking examples
    [[MoEngage sharedInstance]setUserAttribute:@"Bengaluru" forKey:@"Current_City"];
    double timestampEpochValue = [[NSDate date] timeIntervalSince1970];
    [[MoEngage sharedInstance] setUserAttributeTimestamp:timestampEpochValue forKey:@"LastPurchaseDate"];
    [[MoEngage sharedInstance] setUserAttributeLocationLatitude:13.23 longitude:23.43 forKey:@"location_attribute"];
}


#pragma mark- MOInAppNativDelegate Methods
// Called when an inApp is shown on the screen
-(void)inAppShownWithCampaignInfo:(MOInAppCampaign *)inappCampaign{
    NSLog(@"InApp Shown with Campaign ID %@",inappCampaign.campaign_id);
}

// Called when an inApp is dismissed by the user
-(void)inAppDismissedWithCampaignInfo:(MOInAppCampaign *)inappCampaign{
    NSLog(@"InApp Dismissed with Campaign ID %@",inappCampaign.campaign_id);
}

// Called when an inApp is clicked by the user, and it has been configured with a custom action
-(void)inAppClickedWithCampaignInfo:(MOInAppCampaign *)inappCampaign andCustomActionInfo:(MOInAppAction *)customAction{
    NSLog(@"InApp Clicked with Campaign ID %@",inappCampaign.campaign_id);
    NSLog(@"Custom Action Key Value Pairs: %@", customAction.screenName);
}

// Called when an inApp is clicked by the user, and it has been configured with a navigation action
-(void)inAppClickedWithCampaignInfo:(MOInAppCampaign *)inappCampaign andNavigationActionInfo:(MOInAppAction *)navigationAction{
    NSLog(@"InApp Clicked with Campaign ID %@",inappCampaign.campaign_id);
    NSLog(@"Navigation Action Screen Name %@\n Key Value Pairs: %@", navigationAction.screenName,navigationAction.keyValuePairs);
}

// This method is called when an event triggers an in-app from the server, which is of type self handled.
-(void)selfHandledInAppTriggeredWithInfo:(MOInAppSelfHandledCampaign *)inappCampaign{
    NSLog(@"Self Handled InApp Triggered with info:\nCampaign ID: %@ \nContent: %@",inappCampaign.campaign_id, inappCampaign.campaignContent);
}


@end
