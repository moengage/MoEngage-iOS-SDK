//
//  MOGeofenceHandler.h
//  MoEngage
//
//  Created by Gautam on 12/03/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
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
 *  Call this method to enable GeoFence based campaign
 *
 *  @param locManager Optional parameter where you can send CLLocationManager Instance
 *  @param location   Location for which GeoFences have to considered
 */
-(void)startGeofenceWithManager:(CLLocationManager *)locManager andLocation:(CLLocation *)location;

@end
