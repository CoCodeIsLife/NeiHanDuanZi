//
//  JingHuaData.h
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JingHuaVerifyDetail;

@interface JingHuaData : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) NSInteger groupId;
@property (nonatomic, assign) double goDetailCount;
@property (nonatomic, assign) double externalVisitCount;
@property (nonatomic, assign) double pgcAd;
@property (nonatomic, assign) BOOL isOriginal;
@property (nonatomic, strong) NSString *seoUrl;
@property (nonatomic, strong) NSArray *imageList;
@property (nonatomic, strong) NSString *displayMode;
@property (nonatomic, strong) NSString *datetime;
@property (nonatomic, strong) NSArray *gallery;
@property (nonatomic, assign) double reviewCommentMode;
@property (nonatomic, assign) double isKeyItem;
@property (nonatomic, strong) NSString *tag;
@property (nonatomic, assign) double playEffectiveCount;
@property (nonatomic, strong) NSArray *categories;
@property (nonatomic, assign) double diggCount;
@property (nonatomic, assign) double articleType;
@property (nonatomic, assign) double hasM3u8Video;
@property (nonatomic, strong) NSString *sourceUrl;
@property (nonatomic, assign) NSInteger tagId;
@property (nonatomic, assign) double groupFlags;
@property (nonatomic, strong) NSString *articleUrl;
@property (nonatomic, assign) double maxComments;
@property (nonatomic, strong) NSString *displayUrl;
@property (nonatomic, assign) double behotTime;
@property (nonatomic, assign) double detailPlayEffectiveCount;
@property (nonatomic, strong) NSString *keywords;
@property (nonatomic, strong) NSString *middleImage;
@property (nonatomic, assign) double displayType;
@property (nonatomic, assign) BOOL hasInnerVideo;
@property (nonatomic, assign) double composition;
@property (nonatomic, strong) NSArray *label;
@property (nonatomic, strong) NSString *appUrl;
@property (nonatomic, strong) NSString *contentCards;
@property (nonatomic, assign) double groupStatus;
@property (nonatomic, assign) BOOL hasImage;
@property (nonatomic, assign) BOOL hasVideo;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, assign) double pgcArticleType;
@property (nonatomic, assign) BOOL hasGallery;
@property (nonatomic, strong) NSString *detailSource;
@property (nonatomic, assign) double hasMp4Video;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, assign) double listPlayEffectiveCount;
@property (nonatomic, assign) double adType;
@property (nonatomic, assign) double commentCount;
@property (nonatomic, assign) double createTime;
@property (nonatomic, assign) double region;
@property (nonatomic, strong) NSString *strItemId;
@property (nonatomic, assign) double commentsCount;
@property (nonatomic, assign) BOOL reviewComment;
@property (nonatomic, assign) double publishTime;
@property (nonatomic, assign) BOOL middleMode;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, assign) double buryCount;
@property (nonatomic, assign) double groupSource;
@property (nonatomic, assign) double webDisplayType;
@property (nonatomic, strong) NSArray *imageInfos;
@property (nonatomic, assign) double impressionCount;
@property (nonatomic, assign) double contentCntw;
@property (nonatomic, assign) double mediaId;
@property (nonatomic, assign) double wapOpen;
@property (nonatomic, assign) double originalMediaId;
@property (nonatomic, assign) double webArticleType;
@property (nonatomic, strong) NSArray *coverImageInfos;
@property (nonatomic, assign) double wasRecommended;
@property (nonatomic, assign) double shareCount;
@property (nonatomic, assign) double visibility;
@property (nonatomic, assign) NSInteger pgcId;
@property (nonatomic, assign) double banComment;
@property (nonatomic, strong) NSString *imageUrl;
@property (nonatomic, assign) double natantLevel;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSArray *imageDetail;
@property (nonatomic, strong) NSArray *thumbImage;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *strGroupId;
@property (nonatomic, assign) double level;
@property (nonatomic, assign) double articleSubType;
@property (nonatomic, assign) BOOL banBury;
@property (nonatomic, assign) NSInteger itemId;
@property (nonatomic, strong) NSString *pcImageUrl;
@property (nonatomic, strong) NSString *abstract;
@property (nonatomic, assign) BOOL ownGroup;
@property (nonatomic, assign) double detailMode;
@property (nonatomic, assign) double modifyTime;
@property (nonatomic, assign) BOOL banAction;
@property (nonatomic, assign) double repinCount;
@property (nonatomic, strong) JingHuaVerifyDetail *verifyDetail;
@property (nonatomic, strong) NSArray *videoInfos;
@property (nonatomic, assign) double displayStatus;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
