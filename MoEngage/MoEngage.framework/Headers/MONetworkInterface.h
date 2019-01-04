//
//  MONetworkInterface.h
//  MoEngage
//
//  Created by Chengappa C D on 06/07/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MONetworkInterface : NSObject
    
+(instancetype)sharedNetworkInterface;


/**
 *  API call to get all the notifications sent to user from last updated time
 *
 */
-(void)syncInboxDataWithLastUpdatedTime:(NSDate *)lastUpdatedTime andCompletion:(void(^)(NSDictionary *notificationData))completion;


/**
 *  API call to fetch all the active Geofence campaigns
 *
 */
-(void)getGeofencesForLocation:(NSDictionary*)locDict andCompletion:(void(^)(id responseData))completion;


/**
 *  API call when ever user enters/exits geoFence
 *
 */
-(void)geofenceHitWithLocation:(NSDictionary*)locDict transitionType:(NSString *)transitionType geoId:(NSString *)geoId andCompletion:(void (^)(id responseData))completion;

@end
