//
//  MOLogger.h
//  MoEngageCore
//
//  Created by Chengappa on 23/06/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MOLogger.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    MOLoggerTypeVerbose = 0,
    MOLoggerTypeDebug ,
    MOLoggerTypeInfo,
    MOLoggerTypeWarning,
    MOLoggerTypeError
} MOLoggerType;

typedef enum _LogLevel{
    LOG_NONE,
    LOG_ALL,
    LOG_EXCEPTIONS
}LogLevel;


#define MOLogError(st, f, ... )      [[MOLogger sharedInstance] logErrorWithFormatArgs:@[\
        [[NSString stringWithUTF8String:__FILE__] lastPathComponent],\
        [NSNumber numberWithInt:__LINE__],\
        NSStringFromSelector(_cmd),\
        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
        ]\
        andStackTrace:st\
]


#define MOLogInfo(f, ... )      [[MOLogger sharedInstance] logWithType: MOLoggerTypeInfo\
        andFormatArgs:@[\
        [[NSString stringWithUTF8String:__FILE__] lastPathComponent],\
        [NSNumber numberWithInt:__LINE__],\
        NSStringFromSelector(_cmd),\
        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
        ]\
]


#define MOLogDebug(f, ... )       [[MOLogger sharedInstance] logWithType:MOLoggerTypeDebug\
                    andFormatArgs:@[\
                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                    ]\
]

#define MOLogVerbose(f, ... )       [[MOLogger sharedInstance] logWithType:MOLoggerTypeVerbose\
                    andFormatArgs:@[\
                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                    ]\
]

#define MOLogWarning(f, ... )      [[MOLogger sharedInstance] logWithType: MOLoggerTypeWarning\
        andFormatArgs:@[\
        [[NSString stringWithUTF8String:__FILE__] lastPathComponent],\
        [NSNumber numberWithInt:__LINE__],\
        NSStringFromSelector(_cmd),\
        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
        ]\
]

#define MOLog(f, ... )       [[MOLogger sharedInstance] logWithType:MOLoggerTypeDebug\
                    andFormatArgs:@[\
                        [NSString stringWithFormat:(f), ##__VA_ARGS__]\
                    ]\
]



@interface MOLogger : NSObject

@property (class, assign, readonly) NSInteger maxLogDuration;
@property (class, assign, readonly) NSInteger minLogDuration;

+ (instancetype)sharedInstance;
- (instancetype)initWithTag:(NSString *)tag;
- (void)logErrorWithFormatArgs:(NSArray *)args andStackTrace:(NSArray<NSString*>*)stackTrace;
- (void)logWithType:(MOLoggerType)type andFormatArgs:(NSArray *)args;
- (BOOL)clearAllLogs;
- (void)saveLogsToFile:(BOOL)save;
- (void)enableLogs:(BOOL)enable;
- (void)setLogFilesDuration:(NSInteger) duration;

@end

NS_ASSUME_NONNULL_END
