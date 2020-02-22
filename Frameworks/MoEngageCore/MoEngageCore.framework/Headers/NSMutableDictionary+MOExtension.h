//
//  NSMutableDictionary+MOExtension.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (MOExtension)

-(void)setObjectNilHandled:(id)anObject forKey:(NSString*)aKey;

-(void)removeValidObjectForKey:(NSString *)key;

@end
