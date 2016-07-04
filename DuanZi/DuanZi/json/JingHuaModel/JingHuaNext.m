//
//  JingHuaNext.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaNext.h"


NSString *const kJingHuaNextMaxBehotTime = @"max_behot_time";


@interface JingHuaNext ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaNext

@synthesize maxBehotTime = _maxBehotTime;


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
            self.maxBehotTime = [[self objectOrNilForKey:kJingHuaNextMaxBehotTime fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxBehotTime] forKey:kJingHuaNextMaxBehotTime];

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

    self.maxBehotTime = [aDecoder decodeDoubleForKey:kJingHuaNextMaxBehotTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_maxBehotTime forKey:kJingHuaNextMaxBehotTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaNext *copy = [[JingHuaNext alloc] init];
    
    if (copy) {

        copy.maxBehotTime = self.maxBehotTime;
    }
    
    return copy;
}


@end
