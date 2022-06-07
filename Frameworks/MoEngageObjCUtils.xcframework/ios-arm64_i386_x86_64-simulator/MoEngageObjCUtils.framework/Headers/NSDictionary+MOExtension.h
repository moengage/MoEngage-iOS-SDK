//
//  NSDictionary+MOExtension.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (MOExtension)

- (id _Nullable)validObjectForKey: (id _Nullable)key;

- (id _Nullable)validObjectForKeyPath:(id _Nullable)keyPath;

- (BOOL)containsKey: (NSString *)key;

-(NSInteger)getIntegerForKey:(NSString *_Nullable)key;

-(NSString *_Nullable)getStringForKey:(NSString *_Nullable)key;

-(BOOL)getBooleanForKey:(NSString *_Nullable)key;

-(NSMutableDictionary* _Nullable)validDictionaryFromKey:(NSString *_Nullable)key;

-(NSDate * __nullable)getDateForKey:(NSString *_Nullable)key dateFormat:(NSString *_Nullable)format;

NS_ASSUME_NONNULL_END
@end
