//
//  JingHuaData.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaData.h"
#import "JingHuaImageList.h"
#import "JingHuaImageInfos.h"
#import "JingHuaCoverImageInfos.h"
#import "JingHuaImageDetail.h"
#import "JingHuaThumbImage.h"
#import "JingHuaVerifyDetail.h"


NSString *const kJingHuaDataGroupId = @"group_id";
NSString *const kJingHuaDataGoDetailCount = @"go_detail_count";
NSString *const kJingHuaDataExternalVisitCount = @"external_visit_count";
NSString *const kJingHuaDataPgcAd = @"pgc_ad";
NSString *const kJingHuaDataIsOriginal = @"is_original";
NSString *const kJingHuaDataSeoUrl = @"seo_url";
NSString *const kJingHuaDataImageList = @"image_list";
NSString *const kJingHuaDataDisplayMode = @"display_mode";
NSString *const kJingHuaDataDatetime = @"datetime";
NSString *const kJingHuaDataGallery = @"gallery";
NSString *const kJingHuaDataReviewCommentMode = @"review_comment_mode";
NSString *const kJingHuaDataIsKeyItem = @"is_key_item";
NSString *const kJingHuaDataTag = @"tag";
NSString *const kJingHuaDataPlayEffectiveCount = @"play_effective_count";
NSString *const kJingHuaDataCategories = @"categories";
NSString *const kJingHuaDataDiggCount = @"digg_count";
NSString *const kJingHuaDataArticleType = @"article_type";
NSString *const kJingHuaDataHasM3u8Video = @"has_m3u8_video";
NSString *const kJingHuaDataSourceUrl = @"source_url";
NSString *const kJingHuaDataTagId = @"tag_id";
NSString *const kJingHuaDataGroupFlags = @"group_flags";
NSString *const kJingHuaDataArticleUrl = @"article_url";
NSString *const kJingHuaDataMaxComments = @"max_comments";
NSString *const kJingHuaDataDisplayUrl = @"display_url";
NSString *const kJingHuaDataBehotTime = @"behot_time";
NSString *const kJingHuaDataDetailPlayEffectiveCount = @"detail_play_effective_count";
NSString *const kJingHuaDataKeywords = @"keywords";
NSString *const kJingHuaDataMiddleImage = @"middle_image";
NSString *const kJingHuaDataDisplayType = @"display_type";
NSString *const kJingHuaDataHasInnerVideo = @"has_inner_video";
NSString *const kJingHuaDataComposition = @"composition";
NSString *const kJingHuaDataLabel = @"label";
NSString *const kJingHuaDataAppUrl = @"app_url";
NSString *const kJingHuaDataContentCards = @"content_cards";
NSString *const kJingHuaDataGroupStatus = @"group_status";
NSString *const kJingHuaDataHasImage = @"has_image";
NSString *const kJingHuaDataHasVideo = @"has_video";
NSString *const kJingHuaDataLanguage = @"language";
NSString *const kJingHuaDataPgcArticleType = @"pgc_article_type";
NSString *const kJingHuaDataHasGallery = @"has_gallery";
NSString *const kJingHuaDataDetailSource = @"detail_source";
NSString *const kJingHuaDataHasMp4Video = @"has_mp4_video";
NSString *const kJingHuaDataUrl = @"url";
NSString *const kJingHuaDataListPlayEffectiveCount = @"list_play_effective_count";
NSString *const kJingHuaDataAdType = @"ad_type";
NSString *const kJingHuaDataCommentCount = @"comment_count";
NSString *const kJingHuaDataCreateTime = @"create_time";
NSString *const kJingHuaDataRegion = @"region";
NSString *const kJingHuaDataStrItemId = @"str_item_id";
NSString *const kJingHuaDataCommentsCount = @"comments_count";
NSString *const kJingHuaDataReviewComment = @"review_comment";
NSString *const kJingHuaDataPublishTime = @"publish_time";
NSString *const kJingHuaDataMiddleMode = @"middle_mode";
NSString *const kJingHuaDataSource = @"source";
NSString *const kJingHuaDataBuryCount = @"bury_count";
NSString *const kJingHuaDataGroupSource = @"group_source";
NSString *const kJingHuaDataWebDisplayType = @"web_display_type";
NSString *const kJingHuaDataImageInfos = @"image_infos";
NSString *const kJingHuaDataImpressionCount = @"impression_count";
NSString *const kJingHuaDataContentCntw = @"content_cntw";
NSString *const kJingHuaDataMediaId = @"media_id";
NSString *const kJingHuaDataWapOpen = @"wap_open";
NSString *const kJingHuaDataOriginalMediaId = @"original_media_id";
NSString *const kJingHuaDataWebArticleType = @"web_article_type";
NSString *const kJingHuaDataCoverImageInfos = @"cover_image_infos";
NSString *const kJingHuaDataWasRecommended = @"was_recommended";
NSString *const kJingHuaDataShareCount = @"share_count";
NSString *const kJingHuaDataVisibility = @"visibility";
NSString *const kJingHuaDataPgcId = @"pgc_id";
NSString *const kJingHuaDataBanComment = @"ban_comment";
NSString *const kJingHuaDataImageUrl = @"image_url";
NSString *const kJingHuaDataNatantLevel = @"natant_level";
NSString *const kJingHuaDataCity = @"city";
NSString *const kJingHuaDataImageDetail = @"image_detail";
NSString *const kJingHuaDataThumbImage = @"thumb_image";
NSString *const kJingHuaDataTitle = @"title";
NSString *const kJingHuaDataStrGroupId = @"str_group_id";
NSString *const kJingHuaDataLevel = @"level";
NSString *const kJingHuaDataArticleSubType = @"article_sub_type";
NSString *const kJingHuaDataBanBury = @"ban_bury";
NSString *const kJingHuaDataItemId = @"item_id";
NSString *const kJingHuaDataPcImageUrl = @"pc_image_url";
NSString *const kJingHuaDataAbstract = @"abstract";
NSString *const kJingHuaDataOwnGroup = @"own_group";
NSString *const kJingHuaDataDetailMode = @"detail_mode";
NSString *const kJingHuaDataModifyTime = @"modify_time";
NSString *const kJingHuaDataBanAction = @"ban_action";
NSString *const kJingHuaDataRepinCount = @"repin_count";
NSString *const kJingHuaDataVerifyDetail = @"verify_detail";
NSString *const kJingHuaDataVideoInfos = @"video_infos";
NSString *const kJingHuaDataDisplayStatus = @"display_status";


@interface JingHuaData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaData

@synthesize groupId = _groupId;
@synthesize goDetailCount = _goDetailCount;
@synthesize externalVisitCount = _externalVisitCount;
@synthesize pgcAd = _pgcAd;
@synthesize isOriginal = _isOriginal;
@synthesize seoUrl = _seoUrl;
@synthesize imageList = _imageList;
@synthesize displayMode = _displayMode;
@synthesize datetime = _datetime;
@synthesize gallery = _gallery;
@synthesize reviewCommentMode = _reviewCommentMode;
@synthesize isKeyItem = _isKeyItem;
@synthesize tag = _tag;
@synthesize playEffectiveCount = _playEffectiveCount;
@synthesize categories = _categories;
@synthesize diggCount = _diggCount;
@synthesize articleType = _articleType;
@synthesize hasM3u8Video = _hasM3u8Video;
@synthesize sourceUrl = _sourceUrl;
@synthesize tagId = _tagId;
@synthesize groupFlags = _groupFlags;
@synthesize articleUrl = _articleUrl;
@synthesize maxComments = _maxComments;
@synthesize displayUrl = _displayUrl;
@synthesize behotTime = _behotTime;
@synthesize detailPlayEffectiveCount = _detailPlayEffectiveCount;
@synthesize keywords = _keywords;
@synthesize middleImage = _middleImage;
@synthesize displayType = _displayType;
@synthesize hasInnerVideo = _hasInnerVideo;
@synthesize composition = _composition;
@synthesize label = _label;
@synthesize appUrl = _appUrl;
@synthesize contentCards = _contentCards;
@synthesize groupStatus = _groupStatus;
@synthesize hasImage = _hasImage;
@synthesize hasVideo = _hasVideo;
@synthesize language = _language;
@synthesize pgcArticleType = _pgcArticleType;
@synthesize hasGallery = _hasGallery;
@synthesize detailSource = _detailSource;
@synthesize hasMp4Video = _hasMp4Video;
@synthesize url = _url;
@synthesize listPlayEffectiveCount = _listPlayEffectiveCount;
@synthesize adType = _adType;
@synthesize commentCount = _commentCount;
@synthesize createTime = _createTime;
@synthesize region = _region;
@synthesize strItemId = _strItemId;
@synthesize commentsCount = _commentsCount;
@synthesize reviewComment = _reviewComment;
@synthesize publishTime = _publishTime;
@synthesize middleMode = _middleMode;
@synthesize source = _source;
@synthesize buryCount = _buryCount;
@synthesize groupSource = _groupSource;
@synthesize webDisplayType = _webDisplayType;
@synthesize imageInfos = _imageInfos;
@synthesize impressionCount = _impressionCount;
@synthesize contentCntw = _contentCntw;
@synthesize mediaId = _mediaId;
@synthesize wapOpen = _wapOpen;
@synthesize originalMediaId = _originalMediaId;
@synthesize webArticleType = _webArticleType;
@synthesize coverImageInfos = _coverImageInfos;
@synthesize wasRecommended = _wasRecommended;
@synthesize shareCount = _shareCount;
@synthesize visibility = _visibility;
@synthesize pgcId = _pgcId;
@synthesize banComment = _banComment;
@synthesize imageUrl = _imageUrl;
@synthesize natantLevel = _natantLevel;
@synthesize city = _city;
@synthesize imageDetail = _imageDetail;
@synthesize thumbImage = _thumbImage;
@synthesize title = _title;
@synthesize strGroupId = _strGroupId;
@synthesize level = _level;
@synthesize articleSubType = _articleSubType;
@synthesize banBury = _banBury;
@synthesize itemId = _itemId;
@synthesize pcImageUrl = _pcImageUrl;
@synthesize abstract = _abstract;
@synthesize ownGroup = _ownGroup;
@synthesize detailMode = _detailMode;
@synthesize modifyTime = _modifyTime;
@synthesize banAction = _banAction;
@synthesize repinCount = _repinCount;
@synthesize verifyDetail = _verifyDetail;
@synthesize videoInfos = _videoInfos;
@synthesize displayStatus = _displayStatus;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.groupId = [[self objectOrNilForKey:kJingHuaDataGroupId fromDictionary:dict] intValue];
            self.goDetailCount = [[self objectOrNilForKey:kJingHuaDataGoDetailCount fromDictionary:dict] doubleValue];
            self.externalVisitCount = [[self objectOrNilForKey:kJingHuaDataExternalVisitCount fromDictionary:dict] doubleValue];
            self.pgcAd = [[self objectOrNilForKey:kJingHuaDataPgcAd fromDictionary:dict] doubleValue];
            self.isOriginal = [[self objectOrNilForKey:kJingHuaDataIsOriginal fromDictionary:dict] boolValue];
            self.seoUrl = [self objectOrNilForKey:kJingHuaDataSeoUrl fromDictionary:dict];
    NSObject *receivedJingHuaImageList = [dict objectForKey:kJingHuaDataImageList];
    NSMutableArray *parsedJingHuaImageList = [NSMutableArray array];
    if ([receivedJingHuaImageList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaImageList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaImageList addObject:[JingHuaImageList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaImageList isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaImageList addObject:[JingHuaImageList modelObjectWithDictionary:(NSDictionary *)receivedJingHuaImageList]];
    }

    self.imageList = [NSArray arrayWithArray:parsedJingHuaImageList];
            self.displayMode = [self objectOrNilForKey:kJingHuaDataDisplayMode fromDictionary:dict];
            self.datetime = [self objectOrNilForKey:kJingHuaDataDatetime fromDictionary:dict];
            self.gallery = [self objectOrNilForKey:kJingHuaDataGallery fromDictionary:dict];
            self.reviewCommentMode = [[self objectOrNilForKey:kJingHuaDataReviewCommentMode fromDictionary:dict] doubleValue];
            self.isKeyItem = [[self objectOrNilForKey:kJingHuaDataIsKeyItem fromDictionary:dict] doubleValue];
            self.tag = [self objectOrNilForKey:kJingHuaDataTag fromDictionary:dict];
            self.playEffectiveCount = [[self objectOrNilForKey:kJingHuaDataPlayEffectiveCount fromDictionary:dict] doubleValue];
            self.categories = [self objectOrNilForKey:kJingHuaDataCategories fromDictionary:dict];
            self.diggCount = [[self objectOrNilForKey:kJingHuaDataDiggCount fromDictionary:dict] doubleValue];
            self.articleType = [[self objectOrNilForKey:kJingHuaDataArticleType fromDictionary:dict] doubleValue];
            self.hasM3u8Video = [[self objectOrNilForKey:kJingHuaDataHasM3u8Video fromDictionary:dict] doubleValue];
            self.sourceUrl = [self objectOrNilForKey:kJingHuaDataSourceUrl fromDictionary:dict];
            self.tagId = [[self objectOrNilForKey:kJingHuaDataTagId fromDictionary:dict] intValue];
            self.groupFlags = [[self objectOrNilForKey:kJingHuaDataGroupFlags fromDictionary:dict] doubleValue];
            self.articleUrl = [self objectOrNilForKey:kJingHuaDataArticleUrl fromDictionary:dict];
            self.maxComments = [[self objectOrNilForKey:kJingHuaDataMaxComments fromDictionary:dict] doubleValue];
            self.displayUrl = [self objectOrNilForKey:kJingHuaDataDisplayUrl fromDictionary:dict];
            self.behotTime = [[self objectOrNilForKey:kJingHuaDataBehotTime fromDictionary:dict] doubleValue];
            self.detailPlayEffectiveCount = [[self objectOrNilForKey:kJingHuaDataDetailPlayEffectiveCount fromDictionary:dict] doubleValue];
            self.keywords = [self objectOrNilForKey:kJingHuaDataKeywords fromDictionary:dict];
            self.middleImage = [self objectOrNilForKey:kJingHuaDataMiddleImage fromDictionary:dict];
            self.displayType = [[self objectOrNilForKey:kJingHuaDataDisplayType fromDictionary:dict] doubleValue];
            self.hasInnerVideo = [[self objectOrNilForKey:kJingHuaDataHasInnerVideo fromDictionary:dict] boolValue];
            self.composition = [[self objectOrNilForKey:kJingHuaDataComposition fromDictionary:dict] doubleValue];
            self.label = [self objectOrNilForKey:kJingHuaDataLabel fromDictionary:dict];
            self.appUrl = [self objectOrNilForKey:kJingHuaDataAppUrl fromDictionary:dict];
            self.contentCards = [self objectOrNilForKey:kJingHuaDataContentCards fromDictionary:dict];
            self.groupStatus = [[self objectOrNilForKey:kJingHuaDataGroupStatus fromDictionary:dict] doubleValue];
            self.hasImage = [[self objectOrNilForKey:kJingHuaDataHasImage fromDictionary:dict] boolValue];
            self.hasVideo = [[self objectOrNilForKey:kJingHuaDataHasVideo fromDictionary:dict] boolValue];
            self.language = [self objectOrNilForKey:kJingHuaDataLanguage fromDictionary:dict];
            self.pgcArticleType = [[self objectOrNilForKey:kJingHuaDataPgcArticleType fromDictionary:dict] doubleValue];
            self.hasGallery = [[self objectOrNilForKey:kJingHuaDataHasGallery fromDictionary:dict] boolValue];
            self.detailSource = [self objectOrNilForKey:kJingHuaDataDetailSource fromDictionary:dict];
            self.hasMp4Video = [[self objectOrNilForKey:kJingHuaDataHasMp4Video fromDictionary:dict] doubleValue];
            self.url = [self objectOrNilForKey:kJingHuaDataUrl fromDictionary:dict];
            self.listPlayEffectiveCount = [[self objectOrNilForKey:kJingHuaDataListPlayEffectiveCount fromDictionary:dict] doubleValue];
            self.adType = [[self objectOrNilForKey:kJingHuaDataAdType fromDictionary:dict] doubleValue];
            self.commentCount = [[self objectOrNilForKey:kJingHuaDataCommentCount fromDictionary:dict] doubleValue];
            self.createTime = [[self objectOrNilForKey:kJingHuaDataCreateTime fromDictionary:dict] doubleValue];
            self.region = [[self objectOrNilForKey:kJingHuaDataRegion fromDictionary:dict] doubleValue];
            self.strItemId = [self objectOrNilForKey:kJingHuaDataStrItemId fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kJingHuaDataCommentsCount fromDictionary:dict] doubleValue];
            self.reviewComment = [[self objectOrNilForKey:kJingHuaDataReviewComment fromDictionary:dict] boolValue];
            self.publishTime = [[self objectOrNilForKey:kJingHuaDataPublishTime fromDictionary:dict] doubleValue];
            self.middleMode = [[self objectOrNilForKey:kJingHuaDataMiddleMode fromDictionary:dict] boolValue];
            self.source = [self objectOrNilForKey:kJingHuaDataSource fromDictionary:dict];
            self.buryCount = [[self objectOrNilForKey:kJingHuaDataBuryCount fromDictionary:dict] doubleValue];
            self.groupSource = [[self objectOrNilForKey:kJingHuaDataGroupSource fromDictionary:dict] doubleValue];
            self.webDisplayType = [[self objectOrNilForKey:kJingHuaDataWebDisplayType fromDictionary:dict] doubleValue];
    NSObject *receivedJingHuaImageInfos = [dict objectForKey:kJingHuaDataImageInfos];
    NSMutableArray *parsedJingHuaImageInfos = [NSMutableArray array];
    if ([receivedJingHuaImageInfos isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaImageInfos) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaImageInfos addObject:[JingHuaImageInfos modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaImageInfos isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaImageInfos addObject:[JingHuaImageInfos modelObjectWithDictionary:(NSDictionary *)receivedJingHuaImageInfos]];
    }

    self.imageInfos = [NSArray arrayWithArray:parsedJingHuaImageInfos];
            self.impressionCount = [[self objectOrNilForKey:kJingHuaDataImpressionCount fromDictionary:dict] doubleValue];
            self.contentCntw = [[self objectOrNilForKey:kJingHuaDataContentCntw fromDictionary:dict] doubleValue];
            self.mediaId = [[self objectOrNilForKey:kJingHuaDataMediaId fromDictionary:dict] doubleValue];
            self.wapOpen = [[self objectOrNilForKey:kJingHuaDataWapOpen fromDictionary:dict] doubleValue];
            self.originalMediaId = [[self objectOrNilForKey:kJingHuaDataOriginalMediaId fromDictionary:dict] doubleValue];
            self.webArticleType = [[self objectOrNilForKey:kJingHuaDataWebArticleType fromDictionary:dict] doubleValue];
    NSObject *receivedJingHuaCoverImageInfos = [dict objectForKey:kJingHuaDataCoverImageInfos];
    NSMutableArray *parsedJingHuaCoverImageInfos = [NSMutableArray array];
    if ([receivedJingHuaCoverImageInfos isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaCoverImageInfos) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaCoverImageInfos addObject:[JingHuaCoverImageInfos modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaCoverImageInfos isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaCoverImageInfos addObject:[JingHuaCoverImageInfos modelObjectWithDictionary:(NSDictionary *)receivedJingHuaCoverImageInfos]];
    }

    self.coverImageInfos = [NSArray arrayWithArray:parsedJingHuaCoverImageInfos];
            self.wasRecommended = [[self objectOrNilForKey:kJingHuaDataWasRecommended fromDictionary:dict] doubleValue];
            self.shareCount = [[self objectOrNilForKey:kJingHuaDataShareCount fromDictionary:dict] doubleValue];
            self.visibility = [[self objectOrNilForKey:kJingHuaDataVisibility fromDictionary:dict] doubleValue];
            self.pgcId = [[self objectOrNilForKey:kJingHuaDataPgcId fromDictionary:dict] intValue];
            self.banComment = [[self objectOrNilForKey:kJingHuaDataBanComment fromDictionary:dict] doubleValue];
            self.imageUrl = [self objectOrNilForKey:kJingHuaDataImageUrl fromDictionary:dict];
            self.natantLevel = [[self objectOrNilForKey:kJingHuaDataNatantLevel fromDictionary:dict] doubleValue];
            self.city = [self objectOrNilForKey:kJingHuaDataCity fromDictionary:dict];
    NSObject *receivedJingHuaImageDetail = [dict objectForKey:kJingHuaDataImageDetail];
    NSMutableArray *parsedJingHuaImageDetail = [NSMutableArray array];
    if ([receivedJingHuaImageDetail isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaImageDetail) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaImageDetail addObject:[JingHuaImageDetail modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaImageDetail isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaImageDetail addObject:[JingHuaImageDetail modelObjectWithDictionary:(NSDictionary *)receivedJingHuaImageDetail]];
    }

    self.imageDetail = [NSArray arrayWithArray:parsedJingHuaImageDetail];
    NSObject *receivedJingHuaThumbImage = [dict objectForKey:kJingHuaDataThumbImage];
    NSMutableArray *parsedJingHuaThumbImage = [NSMutableArray array];
    if ([receivedJingHuaThumbImage isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaThumbImage) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaThumbImage addObject:[JingHuaThumbImage modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaThumbImage isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaThumbImage addObject:[JingHuaThumbImage modelObjectWithDictionary:(NSDictionary *)receivedJingHuaThumbImage]];
    }

    self.thumbImage = [NSArray arrayWithArray:parsedJingHuaThumbImage];
            self.title = [self objectOrNilForKey:kJingHuaDataTitle fromDictionary:dict];
            self.strGroupId = [self objectOrNilForKey:kJingHuaDataStrGroupId fromDictionary:dict];
            self.level = [[self objectOrNilForKey:kJingHuaDataLevel fromDictionary:dict] doubleValue];
            self.articleSubType = [[self objectOrNilForKey:kJingHuaDataArticleSubType fromDictionary:dict] doubleValue];
            self.banBury = [[self objectOrNilForKey:kJingHuaDataBanBury fromDictionary:dict] boolValue];
            self.itemId = [[self objectOrNilForKey:kJingHuaDataItemId fromDictionary:dict] intValue];
            self.pcImageUrl = [self objectOrNilForKey:kJingHuaDataPcImageUrl fromDictionary:dict];
            self.abstract = [self objectOrNilForKey:kJingHuaDataAbstract fromDictionary:dict];
            self.ownGroup = [[self objectOrNilForKey:kJingHuaDataOwnGroup fromDictionary:dict] boolValue];
            self.detailMode = [[self objectOrNilForKey:kJingHuaDataDetailMode fromDictionary:dict] doubleValue];
            self.modifyTime = [[self objectOrNilForKey:kJingHuaDataModifyTime fromDictionary:dict] doubleValue];
            self.banAction = [[self objectOrNilForKey:kJingHuaDataBanAction fromDictionary:dict] boolValue];
            self.repinCount = [[self objectOrNilForKey:kJingHuaDataRepinCount fromDictionary:dict] doubleValue];
            self.verifyDetail = [JingHuaVerifyDetail modelObjectWithDictionary:[dict objectForKey:kJingHuaDataVerifyDetail]];
            self.videoInfos = [self objectOrNilForKey:kJingHuaDataVideoInfos fromDictionary:dict];
            self.displayStatus = [[self objectOrNilForKey:kJingHuaDataDisplayStatus fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithInt:self.groupId] forKey:kJingHuaDataGroupId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.goDetailCount] forKey:kJingHuaDataGoDetailCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.externalVisitCount] forKey:kJingHuaDataExternalVisitCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pgcAd] forKey:kJingHuaDataPgcAd];
    [mutableDict setValue:[NSNumber numberWithBool:self.isOriginal] forKey:kJingHuaDataIsOriginal];
    [mutableDict setValue:self.seoUrl forKey:kJingHuaDataSeoUrl];
    NSMutableArray *tempArrayForImageList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.imageList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForImageList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForImageList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForImageList] forKey:kJingHuaDataImageList];
    [mutableDict setValue:self.displayMode forKey:kJingHuaDataDisplayMode];
    [mutableDict setValue:self.datetime forKey:kJingHuaDataDatetime];
    NSMutableArray *tempArrayForGallery = [NSMutableArray array];
    for (NSObject *subArrayObject in self.gallery) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForGallery addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForGallery addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForGallery] forKey:kJingHuaDataGallery];
    [mutableDict setValue:[NSNumber numberWithDouble:self.reviewCommentMode] forKey:kJingHuaDataReviewCommentMode];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isKeyItem] forKey:kJingHuaDataIsKeyItem];
    [mutableDict setValue:self.tag forKey:kJingHuaDataTag];
    [mutableDict setValue:[NSNumber numberWithDouble:self.playEffectiveCount] forKey:kJingHuaDataPlayEffectiveCount];
    NSMutableArray *tempArrayForCategories = [NSMutableArray array];
    for (NSObject *subArrayObject in self.categories) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCategories addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCategories addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCategories] forKey:kJingHuaDataCategories];
    [mutableDict setValue:[NSNumber numberWithDouble:self.diggCount] forKey:kJingHuaDataDiggCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.articleType] forKey:kJingHuaDataArticleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasM3u8Video] forKey:kJingHuaDataHasM3u8Video];
    [mutableDict setValue:self.sourceUrl forKey:kJingHuaDataSourceUrl];
    [mutableDict setValue:[NSNumber numberWithInt:self.tagId] forKey:kJingHuaDataTagId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupFlags] forKey:kJingHuaDataGroupFlags];
    [mutableDict setValue:self.articleUrl forKey:kJingHuaDataArticleUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxComments] forKey:kJingHuaDataMaxComments];
    [mutableDict setValue:self.displayUrl forKey:kJingHuaDataDisplayUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.behotTime] forKey:kJingHuaDataBehotTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.detailPlayEffectiveCount] forKey:kJingHuaDataDetailPlayEffectiveCount];
    [mutableDict setValue:self.keywords forKey:kJingHuaDataKeywords];
    [mutableDict setValue:self.middleImage forKey:kJingHuaDataMiddleImage];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayType] forKey:kJingHuaDataDisplayType];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasInnerVideo] forKey:kJingHuaDataHasInnerVideo];
    [mutableDict setValue:[NSNumber numberWithDouble:self.composition] forKey:kJingHuaDataComposition];
    NSMutableArray *tempArrayForLabel = [NSMutableArray array];
    for (NSObject *subArrayObject in self.label) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForLabel addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForLabel addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForLabel] forKey:kJingHuaDataLabel];
    [mutableDict setValue:self.appUrl forKey:kJingHuaDataAppUrl];
    [mutableDict setValue:self.contentCards forKey:kJingHuaDataContentCards];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupStatus] forKey:kJingHuaDataGroupStatus];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasImage] forKey:kJingHuaDataHasImage];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasVideo] forKey:kJingHuaDataHasVideo];
    [mutableDict setValue:self.language forKey:kJingHuaDataLanguage];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pgcArticleType] forKey:kJingHuaDataPgcArticleType];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasGallery] forKey:kJingHuaDataHasGallery];
    [mutableDict setValue:self.detailSource forKey:kJingHuaDataDetailSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasMp4Video] forKey:kJingHuaDataHasMp4Video];
    [mutableDict setValue:self.url forKey:kJingHuaDataUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listPlayEffectiveCount] forKey:kJingHuaDataListPlayEffectiveCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adType] forKey:kJingHuaDataAdType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentCount] forKey:kJingHuaDataCommentCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kJingHuaDataCreateTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.region] forKey:kJingHuaDataRegion];
    [mutableDict setValue:self.strItemId forKey:kJingHuaDataStrItemId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kJingHuaDataCommentsCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.reviewComment] forKey:kJingHuaDataReviewComment];
    [mutableDict setValue:[NSNumber numberWithDouble:self.publishTime] forKey:kJingHuaDataPublishTime];
    [mutableDict setValue:[NSNumber numberWithBool:self.middleMode] forKey:kJingHuaDataMiddleMode];
    [mutableDict setValue:self.source forKey:kJingHuaDataSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.buryCount] forKey:kJingHuaDataBuryCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupSource] forKey:kJingHuaDataGroupSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.webDisplayType] forKey:kJingHuaDataWebDisplayType];
    NSMutableArray *tempArrayForImageInfos = [NSMutableArray array];
    for (NSObject *subArrayObject in self.imageInfos) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForImageInfos addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForImageInfos addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForImageInfos] forKey:kJingHuaDataImageInfos];
    [mutableDict setValue:[NSNumber numberWithDouble:self.impressionCount] forKey:kJingHuaDataImpressionCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.contentCntw] forKey:kJingHuaDataContentCntw];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mediaId] forKey:kJingHuaDataMediaId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.wapOpen] forKey:kJingHuaDataWapOpen];
    [mutableDict setValue:[NSNumber numberWithDouble:self.originalMediaId] forKey:kJingHuaDataOriginalMediaId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.webArticleType] forKey:kJingHuaDataWebArticleType];
    NSMutableArray *tempArrayForCoverImageInfos = [NSMutableArray array];
    for (NSObject *subArrayObject in self.coverImageInfos) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCoverImageInfos addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCoverImageInfos addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCoverImageInfos] forKey:kJingHuaDataCoverImageInfos];
    [mutableDict setValue:[NSNumber numberWithDouble:self.wasRecommended] forKey:kJingHuaDataWasRecommended];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shareCount] forKey:kJingHuaDataShareCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.visibility] forKey:kJingHuaDataVisibility];
    [mutableDict setValue:[NSNumber numberWithInt:self.pgcId] forKey:kJingHuaDataPgcId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.banComment] forKey:kJingHuaDataBanComment];
    [mutableDict setValue:self.imageUrl forKey:kJingHuaDataImageUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.natantLevel] forKey:kJingHuaDataNatantLevel];
    [mutableDict setValue:self.city forKey:kJingHuaDataCity];
    NSMutableArray *tempArrayForImageDetail = [NSMutableArray array];
    for (NSObject *subArrayObject in self.imageDetail) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForImageDetail addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForImageDetail addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForImageDetail] forKey:kJingHuaDataImageDetail];
    NSMutableArray *tempArrayForThumbImage = [NSMutableArray array];
    for (NSObject *subArrayObject in self.thumbImage) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForThumbImage addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForThumbImage addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForThumbImage] forKey:kJingHuaDataThumbImage];
    [mutableDict setValue:self.title forKey:kJingHuaDataTitle];
    [mutableDict setValue:self.strGroupId forKey:kJingHuaDataStrGroupId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.level] forKey:kJingHuaDataLevel];
    [mutableDict setValue:[NSNumber numberWithDouble:self.articleSubType] forKey:kJingHuaDataArticleSubType];
    [mutableDict setValue:[NSNumber numberWithBool:self.banBury] forKey:kJingHuaDataBanBury];
    [mutableDict setValue:[NSNumber numberWithInt:self.itemId] forKey:kJingHuaDataItemId];
    [mutableDict setValue:self.pcImageUrl forKey:kJingHuaDataPcImageUrl];
    [mutableDict setValue:self.abstract forKey:kJingHuaDataAbstract];
    [mutableDict setValue:[NSNumber numberWithBool:self.ownGroup] forKey:kJingHuaDataOwnGroup];
    [mutableDict setValue:[NSNumber numberWithDouble:self.detailMode] forKey:kJingHuaDataDetailMode];
    [mutableDict setValue:[NSNumber numberWithDouble:self.modifyTime] forKey:kJingHuaDataModifyTime];
    [mutableDict setValue:[NSNumber numberWithBool:self.banAction] forKey:kJingHuaDataBanAction];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repinCount] forKey:kJingHuaDataRepinCount];
    [mutableDict setValue:[self.verifyDetail dictionaryRepresentation] forKey:kJingHuaDataVerifyDetail];
    NSMutableArray *tempArrayForVideoInfos = [NSMutableArray array];
    for (NSObject *subArrayObject in self.videoInfos) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForVideoInfos addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForVideoInfos addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForVideoInfos] forKey:kJingHuaDataVideoInfos];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayStatus] forKey:kJingHuaDataDisplayStatus];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.groupId = [aDecoder decodeIntegerForKey:kJingHuaDataGroupId];
    self.goDetailCount = [aDecoder decodeDoubleForKey:kJingHuaDataGoDetailCount];
    self.externalVisitCount = [aDecoder decodeDoubleForKey:kJingHuaDataExternalVisitCount];
    self.pgcAd = [aDecoder decodeDoubleForKey:kJingHuaDataPgcAd];
    self.isOriginal = [aDecoder decodeBoolForKey:kJingHuaDataIsOriginal];
    self.seoUrl = [aDecoder decodeObjectForKey:kJingHuaDataSeoUrl];
    self.imageList = [aDecoder decodeObjectForKey:kJingHuaDataImageList];
    self.displayMode = [aDecoder decodeObjectForKey:kJingHuaDataDisplayMode];
    self.datetime = [aDecoder decodeObjectForKey:kJingHuaDataDatetime];
    self.gallery = [aDecoder decodeObjectForKey:kJingHuaDataGallery];
    self.reviewCommentMode = [aDecoder decodeDoubleForKey:kJingHuaDataReviewCommentMode];
    self.isKeyItem = [aDecoder decodeDoubleForKey:kJingHuaDataIsKeyItem];
    self.tag = [aDecoder decodeObjectForKey:kJingHuaDataTag];
    self.playEffectiveCount = [aDecoder decodeDoubleForKey:kJingHuaDataPlayEffectiveCount];
    self.categories = [aDecoder decodeObjectForKey:kJingHuaDataCategories];
    self.diggCount = [aDecoder decodeDoubleForKey:kJingHuaDataDiggCount];
    self.articleType = [aDecoder decodeDoubleForKey:kJingHuaDataArticleType];
    self.hasM3u8Video = [aDecoder decodeDoubleForKey:kJingHuaDataHasM3u8Video];
    self.sourceUrl = [aDecoder decodeObjectForKey:kJingHuaDataSourceUrl];
    self.tagId = [aDecoder decodeIntegerForKey:kJingHuaDataTagId];
    self.groupFlags = [aDecoder decodeDoubleForKey:kJingHuaDataGroupFlags];
    self.articleUrl = [aDecoder decodeObjectForKey:kJingHuaDataArticleUrl];
    self.maxComments = [aDecoder decodeDoubleForKey:kJingHuaDataMaxComments];
    self.displayUrl = [aDecoder decodeObjectForKey:kJingHuaDataDisplayUrl];
    self.behotTime = [aDecoder decodeDoubleForKey:kJingHuaDataBehotTime];
    self.detailPlayEffectiveCount = [aDecoder decodeDoubleForKey:kJingHuaDataDetailPlayEffectiveCount];
    self.keywords = [aDecoder decodeObjectForKey:kJingHuaDataKeywords];
    self.middleImage = [aDecoder decodeObjectForKey:kJingHuaDataMiddleImage];
    self.displayType = [aDecoder decodeDoubleForKey:kJingHuaDataDisplayType];
    self.hasInnerVideo = [aDecoder decodeBoolForKey:kJingHuaDataHasInnerVideo];
    self.composition = [aDecoder decodeDoubleForKey:kJingHuaDataComposition];
    self.label = [aDecoder decodeObjectForKey:kJingHuaDataLabel];
    self.appUrl = [aDecoder decodeObjectForKey:kJingHuaDataAppUrl];
    self.contentCards = [aDecoder decodeObjectForKey:kJingHuaDataContentCards];
    self.groupStatus = [aDecoder decodeDoubleForKey:kJingHuaDataGroupStatus];
    self.hasImage = [aDecoder decodeBoolForKey:kJingHuaDataHasImage];
    self.hasVideo = [aDecoder decodeBoolForKey:kJingHuaDataHasVideo];
    self.language = [aDecoder decodeObjectForKey:kJingHuaDataLanguage];
    self.pgcArticleType = [aDecoder decodeDoubleForKey:kJingHuaDataPgcArticleType];
    self.hasGallery = [aDecoder decodeBoolForKey:kJingHuaDataHasGallery];
    self.detailSource = [aDecoder decodeObjectForKey:kJingHuaDataDetailSource];
    self.hasMp4Video = [aDecoder decodeDoubleForKey:kJingHuaDataHasMp4Video];
    self.url = [aDecoder decodeObjectForKey:kJingHuaDataUrl];
    self.listPlayEffectiveCount = [aDecoder decodeDoubleForKey:kJingHuaDataListPlayEffectiveCount];
    self.adType = [aDecoder decodeDoubleForKey:kJingHuaDataAdType];
    self.commentCount = [aDecoder decodeDoubleForKey:kJingHuaDataCommentCount];
    self.createTime = [aDecoder decodeDoubleForKey:kJingHuaDataCreateTime];
    self.region = [aDecoder decodeDoubleForKey:kJingHuaDataRegion];
    self.strItemId = [aDecoder decodeObjectForKey:kJingHuaDataStrItemId];
    self.commentsCount = [aDecoder decodeDoubleForKey:kJingHuaDataCommentsCount];
    self.reviewComment = [aDecoder decodeBoolForKey:kJingHuaDataReviewComment];
    self.publishTime = [aDecoder decodeDoubleForKey:kJingHuaDataPublishTime];
    self.middleMode = [aDecoder decodeBoolForKey:kJingHuaDataMiddleMode];
    self.source = [aDecoder decodeObjectForKey:kJingHuaDataSource];
    self.buryCount = [aDecoder decodeDoubleForKey:kJingHuaDataBuryCount];
    self.groupSource = [aDecoder decodeDoubleForKey:kJingHuaDataGroupSource];
    self.webDisplayType = [aDecoder decodeDoubleForKey:kJingHuaDataWebDisplayType];
    self.imageInfos = [aDecoder decodeObjectForKey:kJingHuaDataImageInfos];
    self.impressionCount = [aDecoder decodeDoubleForKey:kJingHuaDataImpressionCount];
    self.contentCntw = [aDecoder decodeDoubleForKey:kJingHuaDataContentCntw];
    self.mediaId = [aDecoder decodeDoubleForKey:kJingHuaDataMediaId];
    self.wapOpen = [aDecoder decodeDoubleForKey:kJingHuaDataWapOpen];
    self.originalMediaId = [aDecoder decodeDoubleForKey:kJingHuaDataOriginalMediaId];
    self.webArticleType = [aDecoder decodeDoubleForKey:kJingHuaDataWebArticleType];
    self.coverImageInfos = [aDecoder decodeObjectForKey:kJingHuaDataCoverImageInfos];
    self.wasRecommended = [aDecoder decodeDoubleForKey:kJingHuaDataWasRecommended];
    self.shareCount = [aDecoder decodeDoubleForKey:kJingHuaDataShareCount];
    self.visibility = [aDecoder decodeDoubleForKey:kJingHuaDataVisibility];
    self.pgcId = [aDecoder decodeIntegerForKey:kJingHuaDataPgcId];
    self.banComment = [aDecoder decodeDoubleForKey:kJingHuaDataBanComment];
    self.imageUrl = [aDecoder decodeObjectForKey:kJingHuaDataImageUrl];
    self.natantLevel = [aDecoder decodeDoubleForKey:kJingHuaDataNatantLevel];
    self.city = [aDecoder decodeObjectForKey:kJingHuaDataCity];
    self.imageDetail = [aDecoder decodeObjectForKey:kJingHuaDataImageDetail];
    self.thumbImage = [aDecoder decodeObjectForKey:kJingHuaDataThumbImage];
    self.title = [aDecoder decodeObjectForKey:kJingHuaDataTitle];
    self.strGroupId = [aDecoder decodeObjectForKey:kJingHuaDataStrGroupId];
    self.level = [aDecoder decodeDoubleForKey:kJingHuaDataLevel];
    self.articleSubType = [aDecoder decodeDoubleForKey:kJingHuaDataArticleSubType];
    self.banBury = [aDecoder decodeBoolForKey:kJingHuaDataBanBury];
    self.itemId = [aDecoder decodeIntegerForKey:kJingHuaDataItemId];
    self.pcImageUrl = [aDecoder decodeObjectForKey:kJingHuaDataPcImageUrl];
    self.abstract = [aDecoder decodeObjectForKey:kJingHuaDataAbstract];
    self.ownGroup = [aDecoder decodeBoolForKey:kJingHuaDataOwnGroup];
    self.detailMode = [aDecoder decodeDoubleForKey:kJingHuaDataDetailMode];
    self.modifyTime = [aDecoder decodeDoubleForKey:kJingHuaDataModifyTime];
    self.banAction = [aDecoder decodeBoolForKey:kJingHuaDataBanAction];
    self.repinCount = [aDecoder decodeDoubleForKey:kJingHuaDataRepinCount];
    self.verifyDetail = [aDecoder decodeObjectForKey:kJingHuaDataVerifyDetail];
    self.videoInfos = [aDecoder decodeObjectForKey:kJingHuaDataVideoInfos];
    self.displayStatus = [aDecoder decodeDoubleForKey:kJingHuaDataDisplayStatus];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeInteger:_groupId forKey:kJingHuaDataGroupId];
    [aCoder encodeDouble:_goDetailCount forKey:kJingHuaDataGoDetailCount];
    [aCoder encodeDouble:_externalVisitCount forKey:kJingHuaDataExternalVisitCount];
    [aCoder encodeDouble:_pgcAd forKey:kJingHuaDataPgcAd];
    [aCoder encodeBool:_isOriginal forKey:kJingHuaDataIsOriginal];
    [aCoder encodeObject:_seoUrl forKey:kJingHuaDataSeoUrl];
    [aCoder encodeObject:_imageList forKey:kJingHuaDataImageList];
    [aCoder encodeObject:_displayMode forKey:kJingHuaDataDisplayMode];
    [aCoder encodeObject:_datetime forKey:kJingHuaDataDatetime];
    [aCoder encodeObject:_gallery forKey:kJingHuaDataGallery];
    [aCoder encodeDouble:_reviewCommentMode forKey:kJingHuaDataReviewCommentMode];
    [aCoder encodeDouble:_isKeyItem forKey:kJingHuaDataIsKeyItem];
    [aCoder encodeObject:_tag forKey:kJingHuaDataTag];
    [aCoder encodeDouble:_playEffectiveCount forKey:kJingHuaDataPlayEffectiveCount];
    [aCoder encodeObject:_categories forKey:kJingHuaDataCategories];
    [aCoder encodeDouble:_diggCount forKey:kJingHuaDataDiggCount];
    [aCoder encodeDouble:_articleType forKey:kJingHuaDataArticleType];
    [aCoder encodeDouble:_hasM3u8Video forKey:kJingHuaDataHasM3u8Video];
    [aCoder encodeObject:_sourceUrl forKey:kJingHuaDataSourceUrl];
    [aCoder encodeInteger:_tagId forKey:kJingHuaDataTagId];
    [aCoder encodeDouble:_groupFlags forKey:kJingHuaDataGroupFlags];
    [aCoder encodeObject:_articleUrl forKey:kJingHuaDataArticleUrl];
    [aCoder encodeDouble:_maxComments forKey:kJingHuaDataMaxComments];
    [aCoder encodeObject:_displayUrl forKey:kJingHuaDataDisplayUrl];
    [aCoder encodeDouble:_behotTime forKey:kJingHuaDataBehotTime];
    [aCoder encodeDouble:_detailPlayEffectiveCount forKey:kJingHuaDataDetailPlayEffectiveCount];
    [aCoder encodeObject:_keywords forKey:kJingHuaDataKeywords];
    [aCoder encodeObject:_middleImage forKey:kJingHuaDataMiddleImage];
    [aCoder encodeDouble:_displayType forKey:kJingHuaDataDisplayType];
    [aCoder encodeBool:_hasInnerVideo forKey:kJingHuaDataHasInnerVideo];
    [aCoder encodeDouble:_composition forKey:kJingHuaDataComposition];
    [aCoder encodeObject:_label forKey:kJingHuaDataLabel];
    [aCoder encodeObject:_appUrl forKey:kJingHuaDataAppUrl];
    [aCoder encodeObject:_contentCards forKey:kJingHuaDataContentCards];
    [aCoder encodeDouble:_groupStatus forKey:kJingHuaDataGroupStatus];
    [aCoder encodeBool:_hasImage forKey:kJingHuaDataHasImage];
    [aCoder encodeBool:_hasVideo forKey:kJingHuaDataHasVideo];
    [aCoder encodeObject:_language forKey:kJingHuaDataLanguage];
    [aCoder encodeDouble:_pgcArticleType forKey:kJingHuaDataPgcArticleType];
    [aCoder encodeBool:_hasGallery forKey:kJingHuaDataHasGallery];
    [aCoder encodeObject:_detailSource forKey:kJingHuaDataDetailSource];
    [aCoder encodeDouble:_hasMp4Video forKey:kJingHuaDataHasMp4Video];
    [aCoder encodeObject:_url forKey:kJingHuaDataUrl];
    [aCoder encodeDouble:_listPlayEffectiveCount forKey:kJingHuaDataListPlayEffectiveCount];
    [aCoder encodeDouble:_adType forKey:kJingHuaDataAdType];
    [aCoder encodeDouble:_commentCount forKey:kJingHuaDataCommentCount];
    [aCoder encodeDouble:_createTime forKey:kJingHuaDataCreateTime];
    [aCoder encodeDouble:_region forKey:kJingHuaDataRegion];
    [aCoder encodeObject:_strItemId forKey:kJingHuaDataStrItemId];
    [aCoder encodeDouble:_commentsCount forKey:kJingHuaDataCommentsCount];
    [aCoder encodeBool:_reviewComment forKey:kJingHuaDataReviewComment];
    [aCoder encodeDouble:_publishTime forKey:kJingHuaDataPublishTime];
    [aCoder encodeBool:_middleMode forKey:kJingHuaDataMiddleMode];
    [aCoder encodeObject:_source forKey:kJingHuaDataSource];
    [aCoder encodeDouble:_buryCount forKey:kJingHuaDataBuryCount];
    [aCoder encodeDouble:_groupSource forKey:kJingHuaDataGroupSource];
    [aCoder encodeDouble:_webDisplayType forKey:kJingHuaDataWebDisplayType];
    [aCoder encodeObject:_imageInfos forKey:kJingHuaDataImageInfos];
    [aCoder encodeDouble:_impressionCount forKey:kJingHuaDataImpressionCount];
    [aCoder encodeDouble:_contentCntw forKey:kJingHuaDataContentCntw];
    [aCoder encodeDouble:_mediaId forKey:kJingHuaDataMediaId];
    [aCoder encodeDouble:_wapOpen forKey:kJingHuaDataWapOpen];
    [aCoder encodeDouble:_originalMediaId forKey:kJingHuaDataOriginalMediaId];
    [aCoder encodeDouble:_webArticleType forKey:kJingHuaDataWebArticleType];
    [aCoder encodeObject:_coverImageInfos forKey:kJingHuaDataCoverImageInfos];
    [aCoder encodeDouble:_wasRecommended forKey:kJingHuaDataWasRecommended];
    [aCoder encodeDouble:_shareCount forKey:kJingHuaDataShareCount];
    [aCoder encodeDouble:_visibility forKey:kJingHuaDataVisibility];
    [aCoder encodeInteger:_pgcId forKey:kJingHuaDataPgcId];
    [aCoder encodeDouble:_banComment forKey:kJingHuaDataBanComment];
    [aCoder encodeObject:_imageUrl forKey:kJingHuaDataImageUrl];
    [aCoder encodeDouble:_natantLevel forKey:kJingHuaDataNatantLevel];
    [aCoder encodeObject:_city forKey:kJingHuaDataCity];
    [aCoder encodeObject:_imageDetail forKey:kJingHuaDataImageDetail];
    [aCoder encodeObject:_thumbImage forKey:kJingHuaDataThumbImage];
    [aCoder encodeObject:_title forKey:kJingHuaDataTitle];
    [aCoder encodeObject:_strGroupId forKey:kJingHuaDataStrGroupId];
    [aCoder encodeDouble:_level forKey:kJingHuaDataLevel];
    [aCoder encodeDouble:_articleSubType forKey:kJingHuaDataArticleSubType];
    [aCoder encodeBool:_banBury forKey:kJingHuaDataBanBury];
    [aCoder encodeInteger:_itemId forKey:kJingHuaDataItemId];
    [aCoder encodeObject:_pcImageUrl forKey:kJingHuaDataPcImageUrl];
    [aCoder encodeObject:_abstract forKey:kJingHuaDataAbstract];
    [aCoder encodeBool:_ownGroup forKey:kJingHuaDataOwnGroup];
    [aCoder encodeDouble:_detailMode forKey:kJingHuaDataDetailMode];
    [aCoder encodeDouble:_modifyTime forKey:kJingHuaDataModifyTime];
    [aCoder encodeBool:_banAction forKey:kJingHuaDataBanAction];
    [aCoder encodeDouble:_repinCount forKey:kJingHuaDataRepinCount];
    [aCoder encodeObject:_verifyDetail forKey:kJingHuaDataVerifyDetail];
    [aCoder encodeObject:_videoInfos forKey:kJingHuaDataVideoInfos];
    [aCoder encodeDouble:_displayStatus forKey:kJingHuaDataDisplayStatus];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaData *copy = [[JingHuaData alloc] init];
    
    if (copy) {

        copy.groupId = self.groupId;
        copy.goDetailCount = self.goDetailCount;
        copy.externalVisitCount = self.externalVisitCount;
        copy.pgcAd = self.pgcAd;
        copy.isOriginal = self.isOriginal;
        copy.seoUrl = [self.seoUrl copyWithZone:zone];
        copy.imageList = [self.imageList copyWithZone:zone];
        copy.displayMode = [self.displayMode copyWithZone:zone];
        copy.datetime = [self.datetime copyWithZone:zone];
        copy.gallery = [self.gallery copyWithZone:zone];
        copy.reviewCommentMode = self.reviewCommentMode;
        copy.isKeyItem = self.isKeyItem;
        copy.tag = [self.tag copyWithZone:zone];
        copy.playEffectiveCount = self.playEffectiveCount;
        copy.categories = [self.categories copyWithZone:zone];
        copy.diggCount = self.diggCount;
        copy.articleType = self.articleType;
        copy.hasM3u8Video = self.hasM3u8Video;
        copy.sourceUrl = [self.sourceUrl copyWithZone:zone];
        copy.tagId = self.tagId;
        copy.groupFlags = self.groupFlags;
        copy.articleUrl = [self.articleUrl copyWithZone:zone];
        copy.maxComments = self.maxComments;
        copy.displayUrl = [self.displayUrl copyWithZone:zone];
        copy.behotTime = self.behotTime;
        copy.detailPlayEffectiveCount = self.detailPlayEffectiveCount;
        copy.keywords = [self.keywords copyWithZone:zone];
        copy.middleImage = [self.middleImage copyWithZone:zone];
        copy.displayType = self.displayType;
        copy.hasInnerVideo = self.hasInnerVideo;
        copy.composition = self.composition;
        copy.label = [self.label copyWithZone:zone];
        copy.appUrl = [self.appUrl copyWithZone:zone];
        copy.contentCards = [self.contentCards copyWithZone:zone];
        copy.groupStatus = self.groupStatus;
        copy.hasImage = self.hasImage;
        copy.hasVideo = self.hasVideo;
        copy.language = [self.language copyWithZone:zone];
        copy.pgcArticleType = self.pgcArticleType;
        copy.hasGallery = self.hasGallery;
        copy.detailSource = [self.detailSource copyWithZone:zone];
        copy.hasMp4Video = self.hasMp4Video;
        copy.url = [self.url copyWithZone:zone];
        copy.listPlayEffectiveCount = self.listPlayEffectiveCount;
        copy.adType = self.adType;
        copy.commentCount = self.commentCount;
        copy.createTime = self.createTime;
        copy.region = self.region;
        copy.strItemId = [self.strItemId copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.reviewComment = self.reviewComment;
        copy.publishTime = self.publishTime;
        copy.middleMode = self.middleMode;
        copy.source = [self.source copyWithZone:zone];
        copy.buryCount = self.buryCount;
        copy.groupSource = self.groupSource;
        copy.webDisplayType = self.webDisplayType;
        copy.imageInfos = [self.imageInfos copyWithZone:zone];
        copy.impressionCount = self.impressionCount;
        copy.contentCntw = self.contentCntw;
        copy.mediaId = self.mediaId;
        copy.wapOpen = self.wapOpen;
        copy.originalMediaId = self.originalMediaId;
        copy.webArticleType = self.webArticleType;
        copy.coverImageInfos = [self.coverImageInfos copyWithZone:zone];
        copy.wasRecommended = self.wasRecommended;
        copy.shareCount = self.shareCount;
        copy.visibility = self.visibility;
        copy.pgcId = self.pgcId;
        copy.banComment = self.banComment;
        copy.imageUrl = [self.imageUrl copyWithZone:zone];
        copy.natantLevel = self.natantLevel;
        copy.city = [self.city copyWithZone:zone];
        copy.imageDetail = [self.imageDetail copyWithZone:zone];
        copy.thumbImage = [self.thumbImage copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.strGroupId = [self.strGroupId copyWithZone:zone];
        copy.level = self.level;
        copy.articleSubType = self.articleSubType;
        copy.banBury = self.banBury;
        copy.itemId = self.itemId;
        copy.pcImageUrl = [self.pcImageUrl copyWithZone:zone];
        copy.abstract = [self.abstract copyWithZone:zone];
        copy.ownGroup = self.ownGroup;
        copy.detailMode = self.detailMode;
        copy.modifyTime = self.modifyTime;
        copy.banAction = self.banAction;
        copy.repinCount = self.repinCount;
        copy.verifyDetail = [self.verifyDetail copyWithZone:zone];
        copy.videoInfos = [self.videoInfos copyWithZone:zone];
        copy.displayStatus = self.displayStatus;
    }
    
    return copy;
}


@end
