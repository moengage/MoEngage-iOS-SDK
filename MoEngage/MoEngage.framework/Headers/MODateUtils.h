//
//  MODateUtils.h
//  MoEngage
//
//  Created by Gautam on 16/01/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MODateUtils : NSObject

+(BOOL)isDateTimeGreaterThanNow:(double)a_utc;
+(NSDateComponents *)getTimeDifferenceBetweenDate:(NSDate *)date andSecondDate:(NSDate *)secondDate;
+(NSDateFormatter *)dateFormatterWithFormat:(NSString *)format;
+(NSString*)getCurrentTimeInISOFormat;
+(NSString*)getDateTimeInISOFormatForDate:(NSDate*)date;

+(BOOL)isDate1:(NSDate*)date1 sameAsDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 laterToDate2:(NSDate*)date2;
+(BOOL)isDate1:(NSDate*)date1 earlierToDate2:(NSDate*)date2;
@end
