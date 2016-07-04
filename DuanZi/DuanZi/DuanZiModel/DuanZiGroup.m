//
//  DuanZiGroup.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiGroup.h"
#import "DuanZiUser.h"
#import "DuanZiDislikeReason.h"
#import "DuanZiNeihanHotLink.h"
#import "DuanZiActivity.h"


NSString *const kDuanZiGroupAllowDislike = @"allow_dislike";
NSString *const kDuanZiGroupShareType = @"share_type";
NSString *const kDuanZiGroupId = @"id";
NSString *const kDuanZiGroupUserBury = @"user_bury";
NSString *const kDuanZiGroupNeihanHotEndTime = @"neihan_hot_end_time";
NSString *const kDuanZiGroupQuickComment = @"quick_comment";
NSString *const kDuanZiGroupBuryCount = @"bury_count";
NSString *const kDuanZiGroupText = @"text";
NSString *const kDuanZiGroupLabel = @"label";
NSString *const kDuanZiGroupNeihanHotStartTime = @"neihan_hot_start_time";
NSString *const kDuanZiGroupShareCount = @"share_count";
NSString *const kDuanZiGroupCategoryVisible = @"category_visible";
NSString *const kDuanZiGroupHasComments = @"has_comments";
NSString *const kDuanZiGroupType = @"type";
NSString *const kDuanZiGroupIsNeihanHot = @"is_neihan_hot";
NSString *const kDuanZiGroupUserFavorite = @"user_favorite";
NSString *const kDuanZiGroupUserDigg = @"user_digg";
NSString *const kDuanZiGroupCategoryName = @"category_name";
NSString *const kDuanZiGroupCreateTime = @"create_time";
NSString *const kDuanZiGroupCategoryType = @"category_type";
NSString *const kDuanZiGroupUser = @"user";
NSString *const kDuanZiGroupDislikeReason = @"dislike_reason";
NSString *const kDuanZiGroupFavoriteCount = @"favorite_count";
NSString *const kDuanZiGroupIsCanShare = @"is_can_share";
NSString *const kDuanZiGroupIdStr = @"id_str";
NSString *const kDuanZiGroupStatusDesc = @"status_desc";
NSString *const kDuanZiGroupDiggCount = @"digg_count";
NSString *const kDuanZiGroupStatus = @"status";
NSString *const kDuanZiGroupNeihanHotLink = @"neihan_hot_link";
NSString *const kDuanZiGroupCommentCount = @"comment_count";
NSString *const kDuanZiGroupActivity = @"activity";
NSString *const kDuanZiGroupUserRepin = @"user_repin";
NSString *const kDuanZiGroupContent = @"content";
NSString *const kDuanZiGroupIsAnonymous = @"is_anonymous";
NSString *const kDuanZiGroupGroupId = @"group_id";
NSString *const kDuanZiGroupGoDetailCount = @"go_detail_count";
NSString *const kDuanZiGroupShareUrl = @"share_url";
NSString *const kDuanZiGroupCategoryId = @"category_id";
NSString *const kDuanZiGroupMediaType = @"media_type";
NSString *const kDuanZiGroupOnlineTime = @"online_time";
NSString *const kDuanZiGroupRepinCount = @"repin_count";
NSString *const kDuanZiGroupHasHotComments = @"has_hot_comments";


@interface DuanZiGroup ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiGroup

@synthesize allowDislike = _allowDislike;
@synthesize shareType = _shareType;
@synthesize groupIdentifier = _groupIdentifier;
@synthesize userBury = _userBury;
@synthesize neihanHotEndTime = _neihanHotEndTime;
@synthesize quickComment = _quickComment;
@synthesize buryCount = _buryCount;
@synthesize text = _text;
@synthesize label = _label;
@synthesize neihanHotStartTime = _neihanHotStartTime;
@synthesize shareCount = _shareCount;
@synthesize categoryVisible = _categoryVisible;
@synthesize hasComments = _hasComments;
@synthesize type = _type;
@synthesize isNeihanHot = _isNeihanHot;
@synthesize userFavorite = _userFavorite;
@synthesize userDigg = _userDigg;
@synthesize categoryName = _categoryName;
@synthesize createTime = _createTime;
@synthesize categoryType = _categoryType;
@synthesize user = _user;
@synthesize dislikeReason = _dislikeReason;
@synthesize favoriteCount = _favoriteCount;
@synthesize isCanShare = _isCanShare;
@synthesize idStr = _idStr;
@synthesize statusDesc = _statusDesc;
@synthesize diggCount = _diggCount;
@synthesize status = _status;
@synthesize neihanHotLink = _neihanHotLink;
@synthesize commentCount = _commentCount;
@synthesize activity = _activity;
@synthesize userRepin = _userRepin;
@synthesize content = _content;
@synthesize isAnonymous = _isAnonymous;
@synthesize groupId = _groupId;
@synthesize goDetailCount = _goDetailCount;
@synthesize shareUrl = _shareUrl;
@synthesize categoryId = _categoryId;
@synthesize mediaType = _mediaType;
@synthesize onlineTime = _onlineTime;
@synthesize repinCount = _repinCount;
@synthesize hasHotComments = _hasHotComments;


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
            self.allowDislike = [[self objectOrNilForKey:kDuanZiGroupAllowDislike fromDictionary:dict] boolValue];
            self.shareType = [[self objectOrNilForKey:kDuanZiGroupShareType fromDictionary:dict] doubleValue];
            self.groupIdentifier = [[self objectOrNilForKey:kDuanZiGroupId fromDictionary:dict] doubleValue];
            self.userBury = [[self objectOrNilForKey:kDuanZiGroupUserBury fromDictionary:dict] doubleValue];
            self.neihanHotEndTime = [self objectOrNilForKey:kDuanZiGroupNeihanHotEndTime fromDictionary:dict];
            self.quickComment = [[self objectOrNilForKey:kDuanZiGroupQuickComment fromDictionary:dict] boolValue];
            self.buryCount = [[self objectOrNilForKey:kDuanZiGroupBuryCount fromDictionary:dict] doubleValue];
            self.text = [self objectOrNilForKey:kDuanZiGroupText fromDictionary:dict];
            self.label = [[self objectOrNilForKey:kDuanZiGroupLabel fromDictionary:dict] doubleValue];
            self.neihanHotStartTime = [self objectOrNilForKey:kDuanZiGroupNeihanHotStartTime fromDictionary:dict];
            self.shareCount = [[self objectOrNilForKey:kDuanZiGroupShareCount fromDictionary:dict] doubleValue];
            self.categoryVisible = [[self objectOrNilForKey:kDuanZiGroupCategoryVisible fromDictionary:dict] boolValue];
            self.hasComments = [[self objectOrNilForKey:kDuanZiGroupHasComments fromDictionary:dict] doubleValue];
            self.type = [[self objectOrNilForKey:kDuanZiGroupType fromDictionary:dict] doubleValue];
            self.isNeihanHot = [[self objectOrNilForKey:kDuanZiGroupIsNeihanHot fromDictionary:dict] boolValue];
            self.userFavorite = [[self objectOrNilForKey:kDuanZiGroupUserFavorite fromDictionary:dict] doubleValue];
            self.userDigg = [[self objectOrNilForKey:kDuanZiGroupUserDigg fromDictionary:dict] doubleValue];
            self.categoryName = [self objectOrNilForKey:kDuanZiGroupCategoryName fromDictionary:dict];
            self.createTime = [[self objectOrNilForKey:kDuanZiGroupCreateTime fromDictionary:dict] doubleValue];
            self.categoryType = [[self objectOrNilForKey:kDuanZiGroupCategoryType fromDictionary:dict] doubleValue];
            self.user = [DuanZiUser modelObjectWithDictionary:[dict objectForKey:kDuanZiGroupUser]];
    NSObject *receivedDuanZiDislikeReason = [dict objectForKey:kDuanZiGroupDislikeReason];
    NSMutableArray *parsedDuanZiDislikeReason = [NSMutableArray array];
    if ([receivedDuanZiDislikeReason isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedDuanZiDislikeReason) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedDuanZiDislikeReason addObject:[DuanZiDislikeReason modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedDuanZiDislikeReason isKindOfClass:[NSDictionary class]]) {
       [parsedDuanZiDislikeReason addObject:[DuanZiDislikeReason modelObjectWithDictionary:(NSDictionary *)receivedDuanZiDislikeReason]];
    }

    self.dislikeReason = [NSArray arrayWithArray:parsedDuanZiDislikeReason];
            self.favoriteCount = [[self objectOrNilForKey:kDuanZiGroupFavoriteCount fromDictionary:dict] doubleValue];
            self.isCanShare = [[self objectOrNilForKey:kDuanZiGroupIsCanShare fromDictionary:dict] doubleValue];
            self.idStr = [self objectOrNilForKey:kDuanZiGroupIdStr fromDictionary:dict];
            self.statusDesc = [self objectOrNilForKey:kDuanZiGroupStatusDesc fromDictionary:dict];
            self.diggCount = [[self objectOrNilForKey:kDuanZiGroupDiggCount fromDictionary:dict] doubleValue];
            self.status = [[self objectOrNilForKey:kDuanZiGroupStatus fromDictionary:dict] doubleValue];
            self.neihanHotLink = [DuanZiNeihanHotLink modelObjectWithDictionary:[dict objectForKey:kDuanZiGroupNeihanHotLink]];
            self.commentCount = [[self objectOrNilForKey:kDuanZiGroupCommentCount fromDictionary:dict] doubleValue];
            self.activity = [DuanZiActivity modelObjectWithDictionary:[dict objectForKey:kDuanZiGroupActivity]];
            self.userRepin = [[self objectOrNilForKey:kDuanZiGroupUserRepin fromDictionary:dict] doubleValue];
            self.content = [self objectOrNilForKey:kDuanZiGroupContent fromDictionary:dict];
            self.isAnonymous = [[self objectOrNilForKey:kDuanZiGroupIsAnonymous fromDictionary:dict] boolValue];
            self.groupId = [[self objectOrNilForKey:kDuanZiGroupGroupId fromDictionary:dict] doubleValue];
            self.goDetailCount = [[self objectOrNilForKey:kDuanZiGroupGoDetailCount fromDictionary:dict] doubleValue];
            self.shareUrl = [self objectOrNilForKey:kDuanZiGroupShareUrl fromDictionary:dict];
            self.categoryId = [[self objectOrNilForKey:kDuanZiGroupCategoryId fromDictionary:dict] doubleValue];
            self.mediaType = [[self objectOrNilForKey:kDuanZiGroupMediaType fromDictionary:dict] doubleValue];
            self.onlineTime = [[self objectOrNilForKey:kDuanZiGroupOnlineTime fromDictionary:dict] doubleValue];
            self.repinCount = [[self objectOrNilForKey:kDuanZiGroupRepinCount fromDictionary:dict] doubleValue];
            self.hasHotComments = [[self objectOrNilForKey:kDuanZiGroupHasHotComments fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowDislike] forKey:kDuanZiGroupAllowDislike];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shareType] forKey:kDuanZiGroupShareType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupIdentifier] forKey:kDuanZiGroupId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userBury] forKey:kDuanZiGroupUserBury];
    [mutableDict setValue:self.neihanHotEndTime forKey:kDuanZiGroupNeihanHotEndTime];
    [mutableDict setValue:[NSNumber numberWithBool:self.quickComment] forKey:kDuanZiGroupQuickComment];
    [mutableDict setValue:[NSNumber numberWithDouble:self.buryCount] forKey:kDuanZiGroupBuryCount];
    [mutableDict setValue:self.text forKey:kDuanZiGroupText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.label] forKey:kDuanZiGroupLabel];
    [mutableDict setValue:self.neihanHotStartTime forKey:kDuanZiGroupNeihanHotStartTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shareCount] forKey:kDuanZiGroupShareCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.categoryVisible] forKey:kDuanZiGroupCategoryVisible];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasComments] forKey:kDuanZiGroupHasComments];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kDuanZiGroupType];
    [mutableDict setValue:[NSNumber numberWithBool:self.isNeihanHot] forKey:kDuanZiGroupIsNeihanHot];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userFavorite] forKey:kDuanZiGroupUserFavorite];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userDigg] forKey:kDuanZiGroupUserDigg];
    [mutableDict setValue:self.categoryName forKey:kDuanZiGroupCategoryName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kDuanZiGroupCreateTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryType] forKey:kDuanZiGroupCategoryType];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kDuanZiGroupUser];
    NSMutableArray *tempArrayForDislikeReason = [NSMutableArray array];
    for (NSObject *subArrayObject in self.dislikeReason) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDislikeReason addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDislikeReason addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDislikeReason] forKey:kDuanZiGroupDislikeReason];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favoriteCount] forKey:kDuanZiGroupFavoriteCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isCanShare] forKey:kDuanZiGroupIsCanShare];
    [mutableDict setValue:self.idStr forKey:kDuanZiGroupIdStr];
    [mutableDict setValue:self.statusDesc forKey:kDuanZiGroupStatusDesc];
    [mutableDict setValue:[NSNumber numberWithDouble:self.diggCount] forKey:kDuanZiGroupDiggCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kDuanZiGroupStatus];
    [mutableDict setValue:[self.neihanHotLink dictionaryRepresentation] forKey:kDuanZiGroupNeihanHotLink];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentCount] forKey:kDuanZiGroupCommentCount];
    [mutableDict setValue:[self.activity dictionaryRepresentation] forKey:kDuanZiGroupActivity];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userRepin] forKey:kDuanZiGroupUserRepin];
    [mutableDict setValue:self.content forKey:kDuanZiGroupContent];
    [mutableDict setValue:[NSNumber numberWithBool:self.isAnonymous] forKey:kDuanZiGroupIsAnonymous];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupId] forKey:kDuanZiGroupGroupId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.goDetailCount] forKey:kDuanZiGroupGoDetailCount];
    [mutableDict setValue:self.shareUrl forKey:kDuanZiGroupShareUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryId] forKey:kDuanZiGroupCategoryId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mediaType] forKey:kDuanZiGroupMediaType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineTime] forKey:kDuanZiGroupOnlineTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repinCount] forKey:kDuanZiGroupRepinCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasHotComments] forKey:kDuanZiGroupHasHotComments];

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

    self.allowDislike = [aDecoder decodeBoolForKey:kDuanZiGroupAllowDislike];
    self.shareType = [aDecoder decodeDoubleForKey:kDuanZiGroupShareType];
    self.groupIdentifier = [aDecoder decodeDoubleForKey:kDuanZiGroupId];
    self.userBury = [aDecoder decodeDoubleForKey:kDuanZiGroupUserBury];
    self.neihanHotEndTime = [aDecoder decodeObjectForKey:kDuanZiGroupNeihanHotEndTime];
    self.quickComment = [aDecoder decodeBoolForKey:kDuanZiGroupQuickComment];
    self.buryCount = [aDecoder decodeDoubleForKey:kDuanZiGroupBuryCount];
    self.text = [aDecoder decodeObjectForKey:kDuanZiGroupText];
    self.label = [aDecoder decodeDoubleForKey:kDuanZiGroupLabel];
    self.neihanHotStartTime = [aDecoder decodeObjectForKey:kDuanZiGroupNeihanHotStartTime];
    self.shareCount = [aDecoder decodeDoubleForKey:kDuanZiGroupShareCount];
    self.categoryVisible = [aDecoder decodeBoolForKey:kDuanZiGroupCategoryVisible];
    self.hasComments = [aDecoder decodeDoubleForKey:kDuanZiGroupHasComments];
    self.type = [aDecoder decodeDoubleForKey:kDuanZiGroupType];
    self.isNeihanHot = [aDecoder decodeBoolForKey:kDuanZiGroupIsNeihanHot];
    self.userFavorite = [aDecoder decodeDoubleForKey:kDuanZiGroupUserFavorite];
    self.userDigg = [aDecoder decodeDoubleForKey:kDuanZiGroupUserDigg];
    self.categoryName = [aDecoder decodeObjectForKey:kDuanZiGroupCategoryName];
    self.createTime = [aDecoder decodeDoubleForKey:kDuanZiGroupCreateTime];
    self.categoryType = [aDecoder decodeDoubleForKey:kDuanZiGroupCategoryType];
    self.user = [aDecoder decodeObjectForKey:kDuanZiGroupUser];
    self.dislikeReason = [aDecoder decodeObjectForKey:kDuanZiGroupDislikeReason];
    self.favoriteCount = [aDecoder decodeDoubleForKey:kDuanZiGroupFavoriteCount];
    self.isCanShare = [aDecoder decodeDoubleForKey:kDuanZiGroupIsCanShare];
    self.idStr = [aDecoder decodeObjectForKey:kDuanZiGroupIdStr];
    self.statusDesc = [aDecoder decodeObjectForKey:kDuanZiGroupStatusDesc];
    self.diggCount = [aDecoder decodeDoubleForKey:kDuanZiGroupDiggCount];
    self.status = [aDecoder decodeDoubleForKey:kDuanZiGroupStatus];
    self.neihanHotLink = [aDecoder decodeObjectForKey:kDuanZiGroupNeihanHotLink];
    self.commentCount = [aDecoder decodeDoubleForKey:kDuanZiGroupCommentCount];
    self.activity = [aDecoder decodeObjectForKey:kDuanZiGroupActivity];
    self.userRepin = [aDecoder decodeDoubleForKey:kDuanZiGroupUserRepin];
    self.content = [aDecoder decodeObjectForKey:kDuanZiGroupContent];
    self.isAnonymous = [aDecoder decodeBoolForKey:kDuanZiGroupIsAnonymous];
    self.groupId = [aDecoder decodeDoubleForKey:kDuanZiGroupGroupId];
    self.goDetailCount = [aDecoder decodeDoubleForKey:kDuanZiGroupGoDetailCount];
    self.shareUrl = [aDecoder decodeObjectForKey:kDuanZiGroupShareUrl];
    self.categoryId = [aDecoder decodeDoubleForKey:kDuanZiGroupCategoryId];
    self.mediaType = [aDecoder decodeDoubleForKey:kDuanZiGroupMediaType];
    self.onlineTime = [aDecoder decodeDoubleForKey:kDuanZiGroupOnlineTime];
    self.repinCount = [aDecoder decodeDoubleForKey:kDuanZiGroupRepinCount];
    self.hasHotComments = [aDecoder decodeDoubleForKey:kDuanZiGroupHasHotComments];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_allowDislike forKey:kDuanZiGroupAllowDislike];
    [aCoder encodeDouble:_shareType forKey:kDuanZiGroupShareType];
    [aCoder encodeDouble:_groupIdentifier forKey:kDuanZiGroupId];
    [aCoder encodeDouble:_userBury forKey:kDuanZiGroupUserBury];
    [aCoder encodeObject:_neihanHotEndTime forKey:kDuanZiGroupNeihanHotEndTime];
    [aCoder encodeBool:_quickComment forKey:kDuanZiGroupQuickComment];
    [aCoder encodeDouble:_buryCount forKey:kDuanZiGroupBuryCount];
    [aCoder encodeObject:_text forKey:kDuanZiGroupText];
    [aCoder encodeDouble:_label forKey:kDuanZiGroupLabel];
    [aCoder encodeObject:_neihanHotStartTime forKey:kDuanZiGroupNeihanHotStartTime];
    [aCoder encodeDouble:_shareCount forKey:kDuanZiGroupShareCount];
    [aCoder encodeBool:_categoryVisible forKey:kDuanZiGroupCategoryVisible];
    [aCoder encodeDouble:_hasComments forKey:kDuanZiGroupHasComments];
    [aCoder encodeDouble:_type forKey:kDuanZiGroupType];
    [aCoder encodeBool:_isNeihanHot forKey:kDuanZiGroupIsNeihanHot];
    [aCoder encodeDouble:_userFavorite forKey:kDuanZiGroupUserFavorite];
    [aCoder encodeDouble:_userDigg forKey:kDuanZiGroupUserDigg];
    [aCoder encodeObject:_categoryName forKey:kDuanZiGroupCategoryName];
    [aCoder encodeDouble:_createTime forKey:kDuanZiGroupCreateTime];
    [aCoder encodeDouble:_categoryType forKey:kDuanZiGroupCategoryType];
    [aCoder encodeObject:_user forKey:kDuanZiGroupUser];
    [aCoder encodeObject:_dislikeReason forKey:kDuanZiGroupDislikeReason];
    [aCoder encodeDouble:_favoriteCount forKey:kDuanZiGroupFavoriteCount];
    [aCoder encodeDouble:_isCanShare forKey:kDuanZiGroupIsCanShare];
    [aCoder encodeObject:_idStr forKey:kDuanZiGroupIdStr];
    [aCoder encodeObject:_statusDesc forKey:kDuanZiGroupStatusDesc];
    [aCoder encodeDouble:_diggCount forKey:kDuanZiGroupDiggCount];
    [aCoder encodeDouble:_status forKey:kDuanZiGroupStatus];
    [aCoder encodeObject:_neihanHotLink forKey:kDuanZiGroupNeihanHotLink];
    [aCoder encodeDouble:_commentCount forKey:kDuanZiGroupCommentCount];
    [aCoder encodeObject:_activity forKey:kDuanZiGroupActivity];
    [aCoder encodeDouble:_userRepin forKey:kDuanZiGroupUserRepin];
    [aCoder encodeObject:_content forKey:kDuanZiGroupContent];
    [aCoder encodeBool:_isAnonymous forKey:kDuanZiGroupIsAnonymous];
    [aCoder encodeDouble:_groupId forKey:kDuanZiGroupGroupId];
    [aCoder encodeDouble:_goDetailCount forKey:kDuanZiGroupGoDetailCount];
    [aCoder encodeObject:_shareUrl forKey:kDuanZiGroupShareUrl];
    [aCoder encodeDouble:_categoryId forKey:kDuanZiGroupCategoryId];
    [aCoder encodeDouble:_mediaType forKey:kDuanZiGroupMediaType];
    [aCoder encodeDouble:_onlineTime forKey:kDuanZiGroupOnlineTime];
    [aCoder encodeDouble:_repinCount forKey:kDuanZiGroupRepinCount];
    [aCoder encodeDouble:_hasHotComments forKey:kDuanZiGroupHasHotComments];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiGroup *copy = [[DuanZiGroup alloc] init];
    
    if (copy) {

        copy.allowDislike = self.allowDislike;
        copy.shareType = self.shareType;
        copy.groupIdentifier = self.groupIdentifier;
        copy.userBury = self.userBury;
        copy.neihanHotEndTime = [self.neihanHotEndTime copyWithZone:zone];
        copy.quickComment = self.quickComment;
        copy.buryCount = self.buryCount;
        copy.text = [self.text copyWithZone:zone];
        copy.label = self.label;
        copy.neihanHotStartTime = [self.neihanHotStartTime copyWithZone:zone];
        copy.shareCount = self.shareCount;
        copy.categoryVisible = self.categoryVisible;
        copy.hasComments = self.hasComments;
        copy.type = self.type;
        copy.isNeihanHot = self.isNeihanHot;
        copy.userFavorite = self.userFavorite;
        copy.userDigg = self.userDigg;
        copy.categoryName = [self.categoryName copyWithZone:zone];
        copy.createTime = self.createTime;
        copy.categoryType = self.categoryType;
        copy.user = [self.user copyWithZone:zone];
        copy.dislikeReason = [self.dislikeReason copyWithZone:zone];
        copy.favoriteCount = self.favoriteCount;
        copy.isCanShare = self.isCanShare;
        copy.idStr = [self.idStr copyWithZone:zone];
        copy.statusDesc = [self.statusDesc copyWithZone:zone];
        copy.diggCount = self.diggCount;
        copy.status = self.status;
        copy.neihanHotLink = [self.neihanHotLink copyWithZone:zone];
        copy.commentCount = self.commentCount;
        copy.activity = [self.activity copyWithZone:zone];
        copy.userRepin = self.userRepin;
        copy.content = [self.content copyWithZone:zone];
        copy.isAnonymous = self.isAnonymous;
        copy.groupId = self.groupId;
        copy.goDetailCount = self.goDetailCount;
        copy.shareUrl = [self.shareUrl copyWithZone:zone];
        copy.categoryId = self.categoryId;
        copy.mediaType = self.mediaType;
        copy.onlineTime = self.onlineTime;
        copy.repinCount = self.repinCount;
        copy.hasHotComments = self.hasHotComments;
    }
    
    return copy;
}


@end
