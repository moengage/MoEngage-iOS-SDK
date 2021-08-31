//
//  MOSource.h
//  MoEngage
//
//  Created by Chengappa C D on 24/05/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MOSource : NSObject <NSCoding>
@property(nonatomic, strong, nullable) NSString* sourceName;
@property(nonatomic, strong, nullable) NSString* campaignID;
@property(nonatomic, strong, nullable) NSString* campaignName;
@property(nonatomic, strong, nullable) NSString* medium;
@property(nonatomic, strong, nullable) NSString* term;
@property(nonatomic, strong, nullable) NSString* content;
@property(nonatomic, strong, nullable) NSString* sourceURL;

@property(nonatomic, strong, nullable) NSDictionary* extras;

-(NSMutableDictionary*)getSourceInfoDict;

-(BOOL)isValidSource;

-(instancetype)initMoESourceWithPushPayload:(NSDictionary*)notifPayload;

-(instancetype)initSourceWithPushPayload:(NSDictionary*)notifPayload;

-(instancetype)initSourceWithSourceInfoDict:(NSDictionary*)sourceInfoDict;

-(instancetype)initSourceWithURL:(NSString*)urlStr;

@end

NS_ASSUME_NONNULL_END

