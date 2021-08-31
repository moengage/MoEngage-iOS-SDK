//
//  MOMedia.h
//  MORichNotification
//
//  Created by Chengappa C D on 29/03/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MOMedia : NSObject
@property(nonatomic, strong) NSURL* mediaURL;
@property(nonatomic, strong) NSString* mediaType;
@property(nonatomic, strong) NSString* attachmentID;
@property(nonatomic, strong) NSString* attachmentExtension;

-(instancetype)initWithURL:(NSString*)mediaURLStr andMediaType:(NSString*)mediaType;
-(NSString*)getFileNameForMedia;
@end

NS_ASSUME_NONNULL_END
