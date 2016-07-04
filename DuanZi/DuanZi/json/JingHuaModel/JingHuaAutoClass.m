//
//  JingHuaAutoClass.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaAutoClass.h"


NSString *const kJingHuaAutoClassStatus = @"status";
NSString *const kJingHuaAutoClassFailReason = @"fail_reason";


@interface JingHuaAutoClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaAutoClass

@synthesize status = _status;
@synthesize failReason = _failReason;


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
            self.status = [[self objectOrNilForKey:kJingHuaAutoClassStatus fromDictionary:dict] doubleValue];
            self.failReason = [[self objectOrNilForKey:kJingHuaAutoClassFailReason fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kJingHuaAutoClassStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.failReason] forKey:kJingHuaAutoClassFailReason];

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

    self.status = [aDecoder decodeDoubleForKey:kJingHuaAutoClassStatus];
    self.failReason = [aDecoder decodeDoubleForKey:kJingHuaAutoClassFailReason];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_status forKey:kJingHuaAutoClassStatus];
    [aCoder encodeDouble:_failReason forKey:kJingHuaAutoClassFailReason];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaAutoClass *copy = [[JingHuaAutoClass alloc] init];
    
    if (copy) {

        copy.status = self.status;
        copy.failReason = self.failReason;
    }
    
    return copy;
}


@end
