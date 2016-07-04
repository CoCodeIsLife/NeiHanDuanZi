//
//  DuanZiGroup.h
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DuanZiUser, DuanZiNeihanHotLink, DuanZiActivity;

@interface DuanZiGroup : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL allowDislike;
@property (nonatomic, assign) double shareType;
@property (nonatomic, assign) double groupIdentifier;
@property (nonatomic, assign) double userBury;
@property (nonatomic, strong) NSString *neihanHotEndTime;
@property (nonatomic, assign) BOOL quickComment;
@property (nonatomic, assign) double buryCount;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) double label;
@property (nonatomic, strong) NSString *neihanHotStartTime;
@property (nonatomic, assign) double shareCount;
@property (nonatomic, assign) BOOL categoryVisible;
@property (nonatomic, assign) double hasComments;
@property (nonatomic, assign) double type;
@property (nonatomic, assign) BOOL isNeihanHot;
@property (nonatomic, assign) double userFavorite;
@property (nonatomic, assign) double userDigg;
@property (nonatomic, strong) NSString *categoryName;
@property (nonatomic, assign) double createTime;
@property (nonatomic, assign) double categoryType;
@property (nonatomic, strong) DuanZiUser *user;
@property (nonatomic, strong) NSArray *dislikeReason;
@property (nonatomic, assign) double favoriteCount;
@property (nonatomic, assign) double isCanShare;
@property (nonatomic, strong) NSString *idStr;
@property (nonatomic, strong) NSString *statusDesc;
@property (nonatomic, assign) double diggCount;
@property (nonatomic, assign) double status;
@property (nonatomic, strong) DuanZiNeihanHotLink *neihanHotLink;
@property (nonatomic, assign) double commentCount;
@property (nonatomic, strong) DuanZiActivity *activity;
@property (nonatomic, assign) double userRepin;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, assign) BOOL isAnonymous;
@property (nonatomic, assign) double groupId;
@property (nonatomic, assign) double goDetailCount;
@property (nonatomic, strong) NSString *shareUrl;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, assign) double mediaType;
@property (nonatomic, assign) double onlineTime;
@property (nonatomic, assign) double repinCount;
@property (nonatomic, assign) double hasHotComments;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
