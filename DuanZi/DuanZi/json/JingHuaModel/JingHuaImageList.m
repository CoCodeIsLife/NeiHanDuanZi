//
//  JingHuaImageList.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaImageList.h"


NSString *const kJingHuaImageListUrl = @"url";
NSString *const kJingHuaImageListPcUrl = @"pc_url";


@interface JingHuaImageList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaImageList

@synthesize url = _url;
@synthesize pcUrl = _pcUrl;


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
            self.url = [self objectOrNilForKey:kJingHuaImageListUrl fromDictionary:dict];
            self.pcUrl = [self objectOrNilForKey:kJingHuaImageListPcUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.url forKey:kJingHuaImageListUrl];
    [mutableDict setValue:self.pcUrl forKey:kJingHuaImageListPcUrl];

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

    self.url = [aDecoder decodeObjectForKey:kJingHuaImageListUrl];
    self.pcUrl = [aDecoder decodeObjectForKey:kJingHuaImageListPcUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_url forKey:kJingHuaImageListUrl];
    [aCoder encodeObject:_pcUrl forKey:kJingHuaImageListPcUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaImageList *copy = [[JingHuaImageList alloc] init];
    
    if (copy) {

        copy.url = [self.url copyWithZone:zone];
        copy.pcUrl = [self.pcUrl copyWithZone:zone];
    }
    
    return copy;
}


@end
