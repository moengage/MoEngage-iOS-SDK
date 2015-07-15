//
//  MOGeofenceHandler.h
//  MoEngage
//
//  Created by Gautam on 12/03/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreLocation;

@protocol MOGeoDelegate <NSObject>
@optional

-(void)locManager:(CLLocationManager *)locationManager didEnterRegion:(CLRegion *)region;
-(void)locManager:(CLLocationManager *)locationManager didExitRegion:(CLRegion *)region;

@end

@interface MOGeofenceHandler : NSObject

/**
 Single instance of locationManager is maintained at all times. If your app is passing the location manager to startGeofence method, this will take control of that instead of creating a new one.
 */
@property(nonatomic, strong) CLLocationManager *locationManager;
@property(nonatomic, weak) id<MOGeoDelegate> delegate;

+(instancetype)sharedInstance;
-(void)startGeofenceWithManager:(CLLocationManager *)locManager andLocation:(CLLocation *)location;

@end
