//
//  MORichPushMode.h
//  MORichNotification
//
//  Created by Chengappa C D on 01/03/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MOPushCard.h"

NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger{
    StylizedBasic,
    ImageCarousel,
    Default
}TemplateType;

@interface MORichPushMode : NSObject
@property(nonatomic, assign) TemplateType templateType;
@property(nonatomic, strong) UIColor *bgColor;
@property(nonatomic, assign) BOOL autoStart;
@property(nonatomic, strong) NSMutableArray<MOPushCard*> *cards;

-(instancetype)initWithDictionary:(NSDictionary*)richPushModeDict;
@end

NS_ASSUME_NONNULL_END
