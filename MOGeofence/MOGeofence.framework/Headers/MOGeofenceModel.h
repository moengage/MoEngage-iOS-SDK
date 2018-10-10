//
//  MOGeofenceModel.h
//  MoEngage
//
//  Created by Gautam on 10/07/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  Enumerator for Transition Type of a Geofence
 */
typedef enum{
    TransitionTypeEnter,
    TransitionTypeExit
}TransitionType;

/**
 *  Model object for Geofence
 */
@interface MOGeofenceModel : NSObject

@property(nonatomic, assign) NSInteger          distance;
@property(nonatomic, assign) NSString           *campaignID;
@property(nonatomic, assign) NSString           *geoID;
@property(nonatomic, assign) double             latitude;
@property(nonatomic, assign) double             longitude;
@property(nonatomic,assign)  TransitionType     transitionType;

-(instancetype)initWithDictionary: (NSDictionary *)dictionary;

@end
