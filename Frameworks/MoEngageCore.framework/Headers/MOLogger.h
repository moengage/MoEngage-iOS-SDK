//
//  MOLogger.h
//  loggerApp
//
//  Created by Chengappa on 23/10/15.
//  Copyright © 2015 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 Enumerator to set Log Levels of SDK for Debugging
 */
typedef enum _LogLevel{
    LOG_NONE,
    LOG_ALL,
    LOG_EXCEPTIONS
}LogLevel;


/**
 This Enumerator is to set how detailed the logs should be
 */
typedef enum {
    MOLoggerVerbosityNone = 0,
    MOLoggerVerbosityDefault,
    MOLoggerVerbosityDetailed
} MOLoggerVerbosity;


/**
 This Enumerator is to set type of log. Currently using MOLoggerSeverityException. Going forward we will use others too.
 */
typedef enum {
    MOLoggerSeverityUnset = 0,
    MOLoggerSeverityDebug,
    MOLoggerSeverityInfo,
    MOLoggerSeverityWarn,
    MOLoggerSeverityException,
    MOLoggerSeverityError
} MOLoggerSeverity;


#define MOSeverityLogDetailed( s, f, ... )      [MOLogger logWithVerbosity:MOLoggerVerbosityDetailed\
                                                                    severity:s\
                                                                    formatArgs:@[\
                                                                        [[NSString stringWithUTF8String:__FILE__] lastPathComponent],\
                                                                        [NSNumber numberWithInt:__LINE__],\
                                                                        NSStringFromSelector(_cmd),\
                                                                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                                                                    ]\
                                                ]

#define MOSeverityLogDetailedWithStackTrace( s,st, f, ... )      [MOLogger logWithVerbosity:MOLoggerVerbosityDetailed\
                                                                        severity:s\
                                                                        formatArgs:@[\
                                                                        [[NSString stringWithUTF8String:__FILE__] lastPathComponent],\
                                                                        [NSNumber numberWithInt:__LINE__],\
                                                                        NSStringFromSelector(_cmd),\
                                                                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                                                                        ]\
                                                                        andStackTrace:st\
                                                                ]


#define MOSeverityLogDefault( s, f, ... )       [MOLogger logWithVerbosity:MOLoggerVerbosityDefault\
                                                                    severity:s\
                                                                    formatArgs:@[\
                                                                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                                                                    ]\
                                                ]

#define MOLogDetailed( f, ... )            MOSeverityLogDetailed( MOLoggerSeverityUnset, f, ##__VA_ARGS__ )
#define MOLogDefault( f, ... )             MOSeverityLogDefault( MOLoggerSeverityUnset, f, ##__VA_ARGS__ )

#define MOLog( f, ... )                    MOLogDefault( f, ##__VA_ARGS__ )
#define MOSeverityLog( s, f, ... )  MOSeverityLogDefault( s, f, ##__VA_ARGS__ )

#ifdef MOLOGGER_SWIZZLE_NSLOG
#define NSLog( s, ... )		MOLog( s, ##__VA_ARGS__ )
#endif

@interface MOLogger : NSObject

+ (void)log:(NSString *)format, ...;
+ (void)logWithVerbosity:(MOLoggerVerbosity)verbosity severity:(MOLoggerSeverity)severity formatArgs:(NSArray *)args;
+ (void)logWithVerbosity:(MOLoggerVerbosity)verbosity severity:(MOLoggerSeverity)severity formatArgs:(NSArray *)args andStackTrace:(NSArray<NSString*>*)stackTrace;

+ (MOLoggerSeverity)minimumSeverity;
+(void)debug:(LogLevel)logLevel;

@end
