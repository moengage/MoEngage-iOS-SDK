//
//  ViewController.m
//  MoEngageObjCIntegration
//
//  Created by Chengappa C D on 03/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import "ViewController.h"
#import <MoEngageSDK/MoEngageSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)viewDidLoad {
    [super viewDidLoad];
    [self trackEvents];
    [self trackUserAttributes];
}


-(void)trackEvents{
    // track event example
    [MoEngage enableSDKLogs:true];
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
    [[MoEngage sharedInstance] setName:@"MoE Test User"];
    [[MoEngage sharedInstance] setLastName:@"Test User"];
    [[MoEngage sharedInstance] setFirstName:@"MoE"];
    [[MoEngage sharedInstance] setEmailID:@"test@moengage.com"];
    [[MoEngage sharedInstance] setMobileNo:@"+91-9799799799"];
    [[MoEngage sharedInstance] setGender:UserGenderMale]; // Use UserGender enumerator for this
    [[MoEngage sharedInstance] setDateOfBirth:[NSDate date]];//userBirthdate should be a NSDate instance
    [[MoEngage sharedInstance] setLocation:[[MOGeoLocation alloc] initWithLatitude:12.22 andLongitude:34.44]];

    //Custom User Attribute tracking examples
    [[MoEngage sharedInstance]setUserAttribute:@"Bengaluru" forKey:@"Current_City"];
    double timestampEpochValue = [[NSDate date] timeIntervalSince1970];
    [[MoEngage sharedInstance] setUserAttributeEpochTime:timestampEpochValue forKey:@"LastPurchaseDate"];
    [[MoEngage sharedInstance] setLocation:[[MOGeoLocation alloc] initWithLatitude:23.33 andLongitude:26.22] forKey:@"attribute name"];

}

@end
