//
//  MOPayloadBuilder.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MOAnalytics/MOProperties.h>

__deprecated_msg("Use MOProperties instead")
@interface MOPayloadBuilder : NSObject

/**
 You can use the methods provided and it's not mandatory to set these.
 Event dict is the dict of the events you init the Payload builder with.
 Alternately, you can init an empty dict and add events to the event dict.
 */
@property(nonatomic, strong) NSMutableDictionary *eventDict;
@property(nonatomic, strong) NSMutableArray *timeStampArray;
@property(nonatomic, strong) NSMutableArray *locationArray;
@property(nonatomic, assign) BOOL isNonInteractive;

-(instancetype)initWithDictionary:(NSMutableDictionary *)dict;

/**
 Use this method to set timestamp or date time. Set this in epoch time format.
 */
-(void)setTimeStamp:(double)timestamp forKey:(NSString *)key;

/**
 Use this method to set latitude and longitude.
 */
-(void)setLocationLat:(double)latitude lng:(double)longitude forKey:(NSString *)key;

/**
 Use this method to set date in NSDate format.
 */
-(void)setDate:(NSDate *)date forKey:(NSString *)key;

/**
 Use this method to set date attribute using ISO date string with format [yyyy-MM-dd'T'HH:mm:ss'Z'].
 */
-(void)setDateISOString:(NSString*)dateStr forKey:(NSString *)key;


/// Method to check if event is non-interactive
-(void)checkNonInteractive;

/**
 Use this method to set a event as Non-Interactive.
 */
-(void)setNonInteractive;

// Get MOProperties Instance for the Payload Builder
-(MOProperties*)getProperties;

@end
