//
//  NSMutableDictionary+MOExtension.h
//  MoEngage
//
//  Created by Gautam on 09/02/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (MOExtension)

-(void)setObjectNilHandled:(id)anObject forKey:(NSString*)aKey;

-(void)removeValidObjectForKey:(NSString *)key;

@end
