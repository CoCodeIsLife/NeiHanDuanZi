//
//  DuanZiDislikeReason.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiDislikeReason.h"


NSString *const kDuanZiDislikeReasonType = @"type";
NSString *const kDuanZiDislikeReasonId = @"id";
NSString *const kDuanZiDislikeReasonTitle = @"title";


@interface DuanZiDislikeReason ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiDislikeReason

@synthesize type = _type;
@synthesize dislikeReasonIdentifier = _dislikeReasonIdentifier;
@synthesize title = _title;


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
            self.type = [[self objectOrNilForKey:kDuanZiDislikeReasonType fromDictionary:dict] doubleValue];
            self.dislikeReasonIdentifier = [[self objectOrNilForKey:kDuanZiDislikeReasonId fromDictionary:dict] doubleValue];
            self.title = [self objectOrNilForKey:kDuanZiDislikeReasonTitle fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kDuanZiDislikeReasonType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.dislikeReasonIdentifier] forKey:kDuanZiDislikeReasonId];
    [mutableDict setValue:self.title forKey:kDuanZiDislikeReasonTitle];

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

    self.type = [aDecoder decodeDoubleForKey:kDuanZiDislikeReasonType];
    self.dislikeReasonIdentifier = [aDecoder decodeDoubleForKey:kDuanZiDislikeReasonId];
    self.title = [aDecoder decodeObjectForKey:kDuanZiDislikeReasonTitle];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_type forKey:kDuanZiDislikeReasonType];
    [aCoder encodeDouble:_dislikeReasonIdentifier forKey:kDuanZiDislikeReasonId];
    [aCoder encodeObject:_title forKey:kDuanZiDislikeReasonTitle];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiDislikeReason *copy = [[DuanZiDislikeReason alloc] init];
    
    if (copy) {

        copy.type = self.type;
        copy.dislikeReasonIdentifier = self.dislikeReasonIdentifier;
        copy.title = [self.title copyWithZone:zone];
    }
    
    return copy;
}


@end
