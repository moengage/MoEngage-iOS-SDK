//
//  NSDictionary+MOExtension.h
//  MoEngage
//
//  Created by Gautam on 09/02/15.
//  Copyright (c) 2015 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (MOExtension)

- (id)validObjectForKey: (id)key;

- (id)validObjectForKeyPath:(id)keyPath;

@end
