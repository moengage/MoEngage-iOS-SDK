//
//  NSDictionary+MOExtension.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MOExtension)

- (id)validObjectForKey: (id)key;

- (id)validObjectForKeyPath:(id)keyPath;

-(NSInteger)getIntegerForKey:(NSString *)key;

-(NSString *)getStringForKey:(NSString *)key;

-(BOOL)getBooleanForKey:(NSString *)key;

-(NSDate * __nullable)getDateForKey:(NSString *)key dateFormat:(NSString *)format;

@end
