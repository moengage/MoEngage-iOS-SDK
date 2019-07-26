//
//  MOPayloadBuilder.h
//  MoEngage
//
//  Created by Gautam on 11/08/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

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


-(void)checkNonInteractive;

/**
 Use this method to set a event as Non-Interactive.
 */
-(void)setNonInteractive;

@end
