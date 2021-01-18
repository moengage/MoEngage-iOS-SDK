//
//  MOProperties.h
//  MOAnalytics
//
//  Created by Chengappa C D on 18/02/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MOAnalytics/MOGeoLocation.h>

NS_ASSUME_NONNULL_BEGIN


/// MOProperties Class is meant to be used for setting event attributes to be tracked for an event
@interface MOProperties : NSObject

/// Initializer with event attributes
/// @param attributeDict A dictionary instance with event attributes to be tracked
-(instancetype)initWithAttributes:(NSMutableDictionary *)attributeDict;

/// Use this method to add event attributes
-(void)addAttribute:(id)attrVal withName:(NSString*)attrName;

/// Use this method to add a location attribute
-(void)addLocationAttribute:(MOGeoLocation*)location withName:(NSString *)attrName;

/// Use this method to add a date attribute using NSDate instance.
-(void)addDateAttribute:(NSDate *)date withName:(NSString *)attrName;

/// Use this method to set date attribute using ISO date string with format [yyyy-MM-dd'T'HH:mm:ss'Z'].
-(void)addDateISOStringAttribute:(NSString*)dateStr withName:(NSString *)attrName;

/// Use this method to set timestamp or date time. Set this in epoch time format.
-(void)addDateEpochAttribute:(double)epoch withName:(NSString *)attrName;

/// Use this method to set a event as Non-Interactive.
-(void)setNonInteractive;

/// Use this method to know if a event is Non-Interactive.
-(BOOL)isNonInteractiveEvent;

-(NSMutableDictionary*)getAttributesDict;
-(NSMutableArray*)getDateTimeAttributesArray;
-(NSMutableArray*)getLocationAttributesArray;

@end

NS_ASSUME_NONNULL_END
