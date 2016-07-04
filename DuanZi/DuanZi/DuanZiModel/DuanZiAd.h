//
//  DuanZiAd.h
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DuanZiLogExtra;

@interface DuanZiAd : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) DuanZiLogExtra *logExtra;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *gifUrl;
@property (nonatomic, strong) NSString *buttonText;
@property (nonatomic, assign) double displayImageHeight;
@property (nonatomic, assign) double isAd;
@property (nonatomic, strong) NSArray *trackUrlList;
@property (nonatomic, strong) NSString *avatarName;
@property (nonatomic, strong) NSString *webUrl;
@property (nonatomic, strong) NSString *trackUrl;
@property (nonatomic, strong) NSString *avatarUrl;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, assign) double adIdentifier;
@property (nonatomic, assign) double displayType;
@property (nonatomic, strong) NSString *displayInfo;
@property (nonatomic, strong) NSString *label;
@property (nonatomic, assign) double adIndex;
@property (nonatomic, strong) NSString *displayImage;
@property (nonatomic, assign) double endTime;
@property (nonatomic, assign) double adId;
@property (nonatomic, assign) double displayImageWidth;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
