//
//  NSMutableDictionary+MOExtension.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (MOExtension)

-(void)setObjectNilHandled:(id _Nullable)anObject forKey:(NSString* _Nullable)aKey;

-(void)removeValidObjectForKey:(NSString * _Nullable)key;

@end
NS_ASSUME_NONNULL_END
