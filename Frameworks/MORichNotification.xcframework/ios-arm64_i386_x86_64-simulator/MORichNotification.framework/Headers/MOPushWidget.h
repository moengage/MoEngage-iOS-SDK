//
//  MOPushWidget.h
//  MORichNotification
//
//  Created by Chengappa C D on 26/02/20.
//  Copyright © 2020 MoEngage Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MOPushAction.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    WIDGET_TEXT,
    WIDGET_BUTTON,
    WIDGET_IMAGE,
    WIDGET_UNKNOWN
}MOPushWidgetType;

@interface MOPushWidget : NSObject

@property(nonatomic, assign) MOPushWidgetType type;
@property(nonatomic, assign) NSInteger widgetId;
@property(nonatomic, strong) id content;
@property(nonatomic, strong) UIColor *bgColor;
@property(nonatomic, strong) NSMutableArray<MOPushAction*> *actions;

-(instancetype)initWithDictionary:(NSDictionary*)widgetDict;

@end

NS_ASSUME_NONNULL_END
