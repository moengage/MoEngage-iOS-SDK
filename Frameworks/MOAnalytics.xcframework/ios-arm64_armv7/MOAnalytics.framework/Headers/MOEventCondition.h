//
//  MOEventCondition.h
//  MoEngageSDK
//
//  Created by Chengappa C D on 18/04/18.
//  Copyright © 2018 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MoEngageCore/MoEngageCore.h>
typedef enum MoEFilterOperator{
    MOE_AND,
    MOE_OR
}MoEFilterOperator;

@interface MOEventCondition: MOModelObject
@property(nonatomic,strong) NSString* eventName;
@property(nonatomic,assign) MoEFilterOperator filterOperator;
@property(nonatomic,strong) NSMutableArray* filters;

-(BOOL)checkIfAttributeConditionSatisfiedForEvent:(NSString*)event andAttributes:(NSDictionary*)eventDict;
@end
