//
//  MOModelObject.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface MOModelObject : NSObject
-(instancetype) initWithDictionary: (NSDictionary * _Nullable)dict;
-(NSDictionary * _Nullable)dictionaryWithProperties;
@end
NS_ASSUME_NONNULL_END
