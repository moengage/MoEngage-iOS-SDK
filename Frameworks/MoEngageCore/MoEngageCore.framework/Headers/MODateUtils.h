//
//  MODateUtils.h
//  MoEngage
//
//  Created by Chengappa on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MODateUtils : NSObject

+(BOOL)isDateTimeGreaterThanNow:(double)a_utc;
+(NSDateComponents *)getTimeDifferenceBetweenDate:(NSDate *)date andSecondDate:(NSDate *)secondDate;

+(NSDateFormatter*)dateFormatterWithFormat:(NSString *)dateFormat forGMTTimeZone:(BOOL)isGMTtz;
+(NSString*)getStringForDate:(NSDate*)date withFormat:(NSString*)dateFormat andForGMTTimeZone:(BOOL)isGMTtz;
+(NSDate*)getDateForString:(NSString*)dateStr withFormat:(NSString*)dateFormat andForGMTTimeZone:(BOOL)isGMTtz;

// Date Comparison methods
+(BOOL)isDate1:(NSDate*)date1 sameAsDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 laterToDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 earlierToDate2:(NSDate*)date2;

// Get current Time
+(NSString*)getGMTtime;
+(NSString*)getLocalTime;
@end
