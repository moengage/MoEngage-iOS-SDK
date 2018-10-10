//
//  MOGeofenceHandler.h
//  MoEngage
//
//  Created by Gautam on 12/03/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

/**
 *  MOGeoDelegate
 */
@protocol MOGeoDelegate <NSObject>
@optional
/**
 *  Method will be called when a geoFence region is entered(Optional)
 *
 *  @param locationManager location manager instance
 *  @param region          GeoFence region entered
 */
-(void)locManager:(CLLocationManager *)locationManager didEnterRegion:(CLRegion *)region;

/**
 *  Method will be called when a geoFence region is exited(Optional)
 *
 *  @param locationManager location manager instance
 *  @param region          GeoFence region exited
 */
-(void)locManager:(CLLocationManager *)locationManager didExitRegion:(CLRegion *)region;

@end

@interface MOGeofenceHandler : NSObject

/**
 Single instance of locationManager is maintained at all times. If your app is passing the location manager to startGeofence method, this will take control of that instead of creating a new one.
 */
@property(nonatomic, strong) CLLocationManager *locationManager;
@property(nonatomic, weak) id<MOGeoDelegate> delegate;

+(instancetype)sharedInstance;

/**
 Use this method to start tracking geofences from the current location.
 @param locManager Pass the location manager instance if you have create one. Else, a new one will be created. This param is optional.
 @param location Pass this param if you already have the location of the user or want to hard code a location. Else the location manager will take the current location of the user
 */
-(void)startGeofenceWithManager:(CLLocationManager *)locManager andLocation:(CLLocation *)location;

@end
