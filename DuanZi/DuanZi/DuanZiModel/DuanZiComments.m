//
//  DuanZiComments.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiComments.h"


NSString *const kDuanZiCommentsId = @"id";
NSString *const kDuanZiCommentsDescription = @"description";
NSString *const kDuanZiCommentsUserDigg = @"user_digg";
NSString *const kDuanZiCommentsBuryCount = @"bury_count";
NSString *const kDuanZiCommentsAvatarUrl = @"avatar_url";
NSString *const kDuanZiCommentsUserId = @"user_id";
NSString *const kDuanZiCommentsUserBury = @"user_bury";
NSString *const kDuanZiCommentsUserProfileUrl = @"user_profile_url";
NSString *const kDuanZiCommentsUserProfileImageUrl = @"user_profile_image_url";
NSString *const kDuanZiCommentsPlatform = @"platform";
NSString *const kDuanZiCommentsUserVerified = @"user_verified";
NSString *const kDuanZiCommentsText = @"text";
NSString *const kDuanZiCommentsGroupId = @"group_id";
NSString *const kDuanZiCommentsPlatformId = @"platform_id";
NSString *const kDuanZiCommentsIsDigg = @"is_digg";
NSString *const kDuanZiCommentsCreateTime = @"create_time";
NSString *const kDuanZiCommentsUserName = @"user_name";
NSString *const kDuanZiCommentsStatus = @"status";
NSString *const kDuanZiCommentsDiggCount = @"digg_count";


@interface DuanZiComments ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiComments

@synthesize commentsIdentifier = _commentsIdentifier;
@synthesize commentsDescription = _commentsDescription;
@synthesize userDigg = _userDigg;
@synthesize buryCount = _buryCount;
@synthesize avatarUrl = _avatarUrl;
@synthesize userId = _userId;
@synthesize userBury = _userBury;
@synthesize userProfileUrl = _userProfileUrl;
@synthesize userProfileImageUrl = _userProfileImageUrl;
@synthesize platform = _platform;
@synthesize userVerified = _userVerified;
@synthesize text = _text;
@synthesize groupId = _groupId;
@synthesize platformId = _platformId;
@synthesize isDigg = _isDigg;
@synthesize createTime = _createTime;
@synthesize userName = _userName;
@synthesize status = _status;
@synthesize diggCount = _diggCount;


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
            self.commentsIdentifier = [[self objectOrNilForKey:kDuanZiCommentsId fromDictionary:dict] doubleValue];
            self.commentsDescription = [self objectOrNilForKey:kDuanZiCommentsDescription fromDictionary:dict];
            self.userDigg = [[self objectOrNilForKey:kDuanZiCommentsUserDigg fromDictionary:dict] doubleValue];
            self.buryCount = [[self objectOrNilForKey:kDuanZiCommentsBuryCount fromDictionary:dict] doubleValue];
            self.avatarUrl = [self objectOrNilForKey:kDuanZiCommentsAvatarUrl fromDictionary:dict];
            self.userId = [[self objectOrNilForKey:kDuanZiCommentsUserId fromDictionary:dict] doubleValue];
            self.userBury = [[self objectOrNilForKey:kDuanZiCommentsUserBury fromDictionary:dict] doubleValue];
            self.userProfileUrl = [self objectOrNilForKey:kDuanZiCommentsUserProfileUrl fromDictionary:dict];
            self.userProfileImageUrl = [self objectOrNilForKey:kDuanZiCommentsUserProfileImageUrl fromDictionary:dict];
            self.platform = [self objectOrNilForKey:kDuanZiCommentsPlatform fromDictionary:dict];
            self.userVerified = [[self objectOrNilForKey:kDuanZiCommentsUserVerified fromDictionary:dict] boolValue];
            self.text = [self objectOrNilForKey:kDuanZiCommentsText fromDictionary:dict];
            self.groupId = [[self objectOrNilForKey:kDuanZiCommentsGroupId fromDictionary:dict] doubleValue];
            self.platformId = [self objectOrNilForKey:kDuanZiCommentsPlatformId fromDictionary:dict];
            self.isDigg = [[self objectOrNilForKey:kDuanZiCommentsIsDigg fromDictionary:dict] doubleValue];
            self.createTime = [[self objectOrNilForKey:kDuanZiCommentsCreateTime fromDictionary:dict] doubleValue];
            self.userName = [self objectOrNilForKey:kDuanZiCommentsUserName fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kDuanZiCommentsStatus fromDictionary:dict] doubleValue];
            self.diggCount = [[self objectOrNilForKey:kDuanZiCommentsDiggCount fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsIdentifier] forKey:kDuanZiCommentsId];
    [mutableDict setValue:self.commentsDescription forKey:kDuanZiCommentsDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userDigg] forKey:kDuanZiCommentsUserDigg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.buryCount] forKey:kDuanZiCommentsBuryCount];
    [mutableDict setValue:self.avatarUrl forKey:kDuanZiCommentsAvatarUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userId] forKey:kDuanZiCommentsUserId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userBury] forKey:kDuanZiCommentsUserBury];
    [mutableDict setValue:self.userProfileUrl forKey:kDuanZiCommentsUserProfileUrl];
    [mutableDict setValue:self.userProfileImageUrl forKey:kDuanZiCommentsUserProfileImageUrl];
    [mutableDict setValue:self.platform forKey:kDuanZiCommentsPlatform];
    [mutableDict setValue:[NSNumber numberWithBool:self.userVerified] forKey:kDuanZiCommentsUserVerified];
    [mutableDict setValue:self.text forKey:kDuanZiCommentsText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupId] forKey:kDuanZiCommentsGroupId];
    [mutableDict setValue:self.platformId forKey:kDuanZiCommentsPlatformId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isDigg] forKey:kDuanZiCommentsIsDigg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.createTime] forKey:kDuanZiCommentsCreateTime];
    [mutableDict setValue:self.userName forKey:kDuanZiCommentsUserName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kDuanZiCommentsStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.diggCount] forKey:kDuanZiCommentsDiggCount];

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

    self.commentsIdentifier = [aDecoder decodeDoubleForKey:kDuanZiCommentsId];
    self.commentsDescription = [aDecoder decodeObjectForKey:kDuanZiCommentsDescription];
    self.userDigg = [aDecoder decodeDoubleForKey:kDuanZiCommentsUserDigg];
    self.buryCount = [aDecoder decodeDoubleForKey:kDuanZiCommentsBuryCount];
    self.avatarUrl = [aDecoder decodeObjectForKey:kDuanZiCommentsAvatarUrl];
    self.userId = [aDecoder decodeDoubleForKey:kDuanZiCommentsUserId];
    self.userBury = [aDecoder decodeDoubleForKey:kDuanZiCommentsUserBury];
    self.userProfileUrl = [aDecoder decodeObjectForKey:kDuanZiCommentsUserProfileUrl];
    self.userProfileImageUrl = [aDecoder decodeObjectForKey:kDuanZiCommentsUserProfileImageUrl];
    self.platform = [aDecoder decodeObjectForKey:kDuanZiCommentsPlatform];
    self.userVerified = [aDecoder decodeBoolForKey:kDuanZiCommentsUserVerified];
    self.text = [aDecoder decodeObjectForKey:kDuanZiCommentsText];
    self.groupId = [aDecoder decodeDoubleForKey:kDuanZiCommentsGroupId];
    self.platformId = [aDecoder decodeObjectForKey:kDuanZiCommentsPlatformId];
    self.isDigg = [aDecoder decodeDoubleForKey:kDuanZiCommentsIsDigg];
    self.createTime = [aDecoder decodeDoubleForKey:kDuanZiCommentsCreateTime];
    self.userName = [aDecoder decodeObjectForKey:kDuanZiCommentsUserName];
    self.status = [aDecoder decodeDoubleForKey:kDuanZiCommentsStatus];
    self.diggCount = [aDecoder decodeDoubleForKey:kDuanZiCommentsDiggCount];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_commentsIdentifier forKey:kDuanZiCommentsId];
    [aCoder encodeObject:_commentsDescription forKey:kDuanZiCommentsDescription];
    [aCoder encodeDouble:_userDigg forKey:kDuanZiCommentsUserDigg];
    [aCoder encodeDouble:_buryCount forKey:kDuanZiCommentsBuryCount];
    [aCoder encodeObject:_avatarUrl forKey:kDuanZiCommentsAvatarUrl];
    [aCoder encodeDouble:_userId forKey:kDuanZiCommentsUserId];
    [aCoder encodeDouble:_userBury forKey:kDuanZiCommentsUserBury];
    [aCoder encodeObject:_userProfileUrl forKey:kDuanZiCommentsUserProfileUrl];
    [aCoder encodeObject:_userProfileImageUrl forKey:kDuanZiCommentsUserProfileImageUrl];
    [aCoder encodeObject:_platform forKey:kDuanZiCommentsPlatform];
    [aCoder encodeBool:_userVerified forKey:kDuanZiCommentsUserVerified];
    [aCoder encodeObject:_text forKey:kDuanZiCommentsText];
    [aCoder encodeDouble:_groupId forKey:kDuanZiCommentsGroupId];
    [aCoder encodeObject:_platformId forKey:kDuanZiCommentsPlatformId];
    [aCoder encodeDouble:_isDigg forKey:kDuanZiCommentsIsDigg];
    [aCoder encodeDouble:_createTime forKey:kDuanZiCommentsCreateTime];
    [aCoder encodeObject:_userName forKey:kDuanZiCommentsUserName];
    [aCoder encodeDouble:_status forKey:kDuanZiCommentsStatus];
    [aCoder encodeDouble:_diggCount forKey:kDuanZiCommentsDiggCount];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiComments *copy = [[DuanZiComments alloc] init];
    
    if (copy) {

        copy.commentsIdentifier = self.commentsIdentifier;
        copy.commentsDescription = [self.commentsDescription copyWithZone:zone];
        copy.userDigg = self.userDigg;
        copy.buryCount = self.buryCount;
        copy.avatarUrl = [self.avatarUrl copyWithZone:zone];
        copy.userId = self.userId;
        copy.userBury = self.userBury;
        copy.userProfileUrl = [self.userProfileUrl copyWithZone:zone];
        copy.userProfileImageUrl = [self.userProfileImageUrl copyWithZone:zone];
        copy.platform = [self.platform copyWithZone:zone];
        copy.userVerified = self.userVerified;
        copy.text = [self.text copyWithZone:zone];
        copy.groupId = self.groupId;
        copy.platformId = [self.platformId copyWithZone:zone];
        copy.isDigg = self.isDigg;
        copy.createTime = self.createTime;
        copy.userName = [self.userName copyWithZone:zone];
        copy.status = self.status;
        copy.diggCount = self.diggCount;
    }
    
    return copy;
}


@end
