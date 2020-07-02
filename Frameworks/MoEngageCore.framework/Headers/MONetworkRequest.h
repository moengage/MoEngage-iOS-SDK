//
//  MONetworkRequest.h
//  MoEngageCore
//
//  Created by Chengappa C D on 01/11/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MONetworkConfiguration.h>

NS_ASSUME_NONNULL_BEGIN

@interface MONetworkRequest : NSObject
@property(assign, nonatomic) ServiceType    service;
@property(strong, nonatomic) NSURL*         requestURL;
@property(strong, nonatomic) NSString*      requestMethod;
@property(strong, nonatomic) NSDictionary*  requestHeaders;
@property(strong, nonatomic) NSDictionary*  requestParams;
@property(strong, nonatomic) NSDictionary*  requestBody;


-(instancetype)initWithService:(ServiceType)serviceType params:(NSDictionary* _Nullable)paramsDict additionalHeaders:(NSDictionary* _Nullable)headersDict requestBody:(NSDictionary* _Nullable)reqBodyDict andAdditionalPathComponent:(NSString* _Nullable)additionalPath;


-(void)executeRequestWithCompletionBlock:(void (^)(BOOL completed,NSDictionary* _Nullable responseData))completion;

@end

NS_ASSUME_NONNULL_END
