//
//  MOCardItem.h
//  MORichNotification
//
//  Created by Chengappa C D on 26/02/20.
//  Copyright © 2020 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MOPushWidget.h"

NS_ASSUME_NONNULL_BEGIN
typedef enum {
    CARD_IMG_CAROUSEL,
    CARD_PRODUCT_GRID,
    CARD_PRODUCT_WIDGET,
    CARD_UNKNOWN
}MOPushCardType;

@interface MOPushCard : NSObject
@property(nonatomic, assign) NSInteger cardID;
@property(nonatomic, assign) MOPushCardType cardType;
@property(nonatomic, strong) UIColor *bgColor;
@property(nonatomic, strong) NSMutableArray<MOPushWidget*> *widgets;
@property(nonatomic, strong) NSMutableArray<MOPushAction*> *actions;

-(instancetype)initWithDictionary:(NSDictionary*)cardDict;
@end

NS_ASSUME_NONNULL_END
