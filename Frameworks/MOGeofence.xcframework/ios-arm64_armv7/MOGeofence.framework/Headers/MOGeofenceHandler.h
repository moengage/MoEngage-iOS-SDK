//
//  MOGeofenceHandler.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
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
@property(nonatomic, weak) id<MOGeoDelegate> delegate;

+(instancetype)sharedInstance;

/// Method to Initialize geofence module [Internal method]
-(void)initGeofenceModule;

/**
 Deprecated Method Use this method to start tracking geofences from the current location.
 @param locManager Pass the location manager instance if you have create one. Else, a new one will be created. This param is optional.
 @param location Pass this param if you already have the location of the user or want to hard code a location. Else the location manager will take the current location of the user
 */
-(void)startGeofenceWithManager:(CLLocationManager *)locManager andLocation:(CLLocation *)location __deprecated_msg("This method is deprecated from MOGeofence Version 2.0.0, use startGeofenceMonitoring() method instead");


/// Method to start Geofence tracking in the SDK, this method also asks for location permission if not already done
-(void)startGeofenceMonitoring;

/**
 Method called on SDK State update
 */
-(void)moengageSDKStateUpdated;

@end
