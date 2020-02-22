//
//  MOModelObject.h
//  MoEngage
//
//  Created by Chengappa C D on 30/10/19.
//  Copyright © 2019 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOModelObject : NSObject
-(instancetype) initWithDictionary: (NSDictionary *)dict;
- (NSDictionary *)dictionaryWithProperties;
@end
