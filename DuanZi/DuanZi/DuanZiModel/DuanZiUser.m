//
//  DuanZiUser.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiUser.h"


NSString *const kDuanZiUserUserVerified = @"user_verified";
NSString *const kDuanZiUserUgcCount = @"ugc_count";
NSString *const kDuanZiUserIsFollowing = @"is_following";
NSString *const kDuanZiUserFollowers = @"followers";
NSString *const kDuanZiUserFollowings = @"followings";
NSString *const kDuanZiUserUserId = @"user_id";
NSString *const kDuanZiUserName = @"name";
NSString *const kDuanZiUserAvatarUrl = @"avatar_url";


@interface DuanZiUser ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiUser

@synthesize userVerified = _userVerified;
@synthesize ugcCount = _ugcCount;
@synthesize isFollowing = _isFollowing;
@synthesize followers = _followers;
@synthesize followings = _followings;
@synthesize userId = _userId;
@synthesize name = _name;
@synthesize avatarUrl = _avatarUrl;


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
            self.userVerified = [[self objectOrNilForKey:kDuanZiUserUserVerified fromDictionary:dict] boolValue];
            self.ugcCount = [[self objectOrNilForKey:kDuanZiUserUgcCount fromDictionary:dict] doubleValue];
            self.isFollowing = [[self objectOrNilForKey:kDuanZiUserIsFollowing fromDictionary:dict] boolValue];
            self.followers = [[self objectOrNilForKey:kDuanZiUserFollowers fromDictionary:dict] doubleValue];
            self.followings = [[self objectOrNilForKey:kDuanZiUserFollowings fromDictionary:dict] doubleValue];
            self.userId = [[self objectOrNilForKey:kDuanZiUserUserId fromDictionary:dict] doubleValue];
            self.name = [self objectOrNilForKey:kDuanZiUserName fromDictionary:dict];
            self.avatarUrl = [self objectOrNilForKey:kDuanZiUserAvatarUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.userVerified] forKey:kDuanZiUserUserVerified];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ugcCount] forKey:kDuanZiUserUgcCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.isFollowing] forKey:kDuanZiUserIsFollowing];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followers] forKey:kDuanZiUserFollowers];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followings] forKey:kDuanZiUserFollowings];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userId] forKey:kDuanZiUserUserId];
    [mutableDict setValue:self.name forKey:kDuanZiUserName];
    [mutableDict setValue:self.avatarUrl forKey:kDuanZiUserAvatarUrl];

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

    self.userVerified = [aDecoder decodeBoolForKey:kDuanZiUserUserVerified];
    self.ugcCount = [aDecoder decodeDoubleForKey:kDuanZiUserUgcCount];
    self.isFollowing = [aDecoder decodeBoolForKey:kDuanZiUserIsFollowing];
    self.followers = [aDecoder decodeDoubleForKey:kDuanZiUserFollowers];
    self.followings = [aDecoder decodeDoubleForKey:kDuanZiUserFollowings];
    self.userId = [aDecoder decodeDoubleForKey:kDuanZiUserUserId];
    self.name = [aDecoder decodeObjectForKey:kDuanZiUserName];
    self.avatarUrl = [aDecoder decodeObjectForKey:kDuanZiUserAvatarUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_userVerified forKey:kDuanZiUserUserVerified];
    [aCoder encodeDouble:_ugcCount forKey:kDuanZiUserUgcCount];
    [aCoder encodeBool:_isFollowing forKey:kDuanZiUserIsFollowing];
    [aCoder encodeDouble:_followers forKey:kDuanZiUserFollowers];
    [aCoder encodeDouble:_followings forKey:kDuanZiUserFollowings];
    [aCoder encodeDouble:_userId forKey:kDuanZiUserUserId];
    [aCoder encodeObject:_name forKey:kDuanZiUserName];
    [aCoder encodeObject:_avatarUrl forKey:kDuanZiUserAvatarUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiUser *copy = [[DuanZiUser alloc] init];
    
    if (copy) {

        copy.userVerified = self.userVerified;
        copy.ugcCount = self.ugcCount;
        copy.isFollowing = self.isFollowing;
        copy.followers = self.followers;
        copy.followings = self.followings;
        copy.userId = self.userId;
        copy.name = [self.name copyWithZone:zone];
        copy.avatarUrl = [self.avatarUrl copyWithZone:zone];
    }
    
    return copy;
}


@end
