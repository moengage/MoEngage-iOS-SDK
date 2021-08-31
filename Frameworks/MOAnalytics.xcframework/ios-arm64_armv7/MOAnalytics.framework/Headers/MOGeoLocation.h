//
//  MOGeoLocation.h
//  MOAnalytics
//
//  Created by Chengappa C D on 18/02/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/// MoEngage Framework Class for defining location attributes
@interface MOGeoLocation : NSObject

/// Initializer method
/// @param lat Location Latitude Value of Coordinate
/// @param lng Location Longitude Value of Coordinate
-(instancetype)initWithLatitude:(double)lat andLongitude:(double)lng;

@property(nonatomic, assign) double latitude;
@property(nonatomic, assign) double longitude;
@end

NS_ASSUME_NONNULL_END
