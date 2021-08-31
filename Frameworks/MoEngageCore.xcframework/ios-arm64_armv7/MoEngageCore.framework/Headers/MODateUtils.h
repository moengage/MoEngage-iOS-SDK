//
//  MODateUtils.h
//  MoEngage
//
//  Created by Chengappa on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MODateUtils : NSObject

+(NSDateFormatter* _Nullable)dateFormatterForUsPosixLocaleWithFormat:(NSString * _Nullable)dateFormat forGMTTimeZone:(BOOL)isGMTtz;
+(NSString* _Nullable)getStringForDate:(NSDate* _Nullable)date withFormat:(NSString* _Nullable)dateFormat andForGMTTimeZone:(BOOL)isGMTtz;
+(NSString* _Nullable)getStringInDeviceLocaleForDate:(NSDate* _Nullable)date withFormat:(NSString* _Nullable)dateFormat andForGMTTimeZone:(BOOL)isGMTtz;
+(NSDate* _Nullable)getDateForString:(NSString* _Nullable)dateStr withFormat:(NSString* _Nullable)dateFormat andForGMTTimeZone:(BOOL)isGMTtz;

// Date Comparison methods
+(BOOL)isDate1:(NSDate*)date1 sameAsDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 laterToDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 earlierToDate2:(NSDate*)date2;

// Get current Time
+(NSString*)getGMTtime;
+(NSString*)getLocalTime;

+(NSDateComponents* _Nullable)getDateComponentsFromTimeString:(NSString* _Nullable)timeString;
+(BOOL)isTime:(NSDateComponents*)evaluatedTime inSlotWithStartTime:(NSDateComponents*)startTime andEndTime:(NSDateComponents*)endTime;

+ (BOOL)checkDate:(NSDate *)date inRangeFromDate:(NSDate *)startDate toDate:(NSDate *)lastDate includeLast:(BOOL)include;
+ (NSDate *)dateByAddingDays: (NSInteger) dDays date:(NSDate *)date;
+ (NSDate *) dateBySubtractingDays: (NSInteger) dDays date:(NSDate *)date;
@end


NS_ASSUME_NONNULL_END
