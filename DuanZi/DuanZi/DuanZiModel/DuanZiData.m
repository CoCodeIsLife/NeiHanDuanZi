//
//  DuanZiData.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiData.h"


NSString *const kDuanZiDataHasMore = @"has_more";
NSString *const kDuanZiDataData = @"data";
NSString *const kDuanZiDataMinTime = @"min_time";
NSString *const kDuanZiDataMaxTime = @"max_time";
NSString *const kDuanZiDataTip = @"tip";


@interface DuanZiData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiData

@synthesize hasMore = _hasMore;
@synthesize data = _data;
@synthesize minTime = _minTime;
@synthesize maxTime = _maxTime;
@synthesize tip = _tip;


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
            self.hasMore = [[self objectOrNilForKey:kDuanZiDataHasMore fromDictionary:dict] boolValue];
            self.data = [self objectOrNilForKey:kDuanZiDataData fromDictionary:dict];
            self.minTime = [[self objectOrNilForKey:kDuanZiDataMinTime fromDictionary:dict] doubleValue];
            self.maxTime = [[self objectOrNilForKey:kDuanZiDataMaxTime fromDictionary:dict] doubleValue];
            self.tip = [self objectOrNilForKey:kDuanZiDataTip fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasMore] forKey:kDuanZiDataHasMore];
    NSMutableArray *tempArrayForData = [NSMutableArray array];
    for (NSObject *subArrayObject in self.data) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForData addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForData addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForData] forKey:kDuanZiDataData];
    [mutableDict setValue:[NSNumber numberWithDouble:self.minTime] forKey:kDuanZiDataMinTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxTime] forKey:kDuanZiDataMaxTime];
    [mutableDict setValue:self.tip forKey:kDuanZiDataTip];

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

    self.hasMore = [aDecoder decodeBoolForKey:kDuanZiDataHasMore];
    self.data = [aDecoder decodeObjectForKey:kDuanZiDataData];
    self.minTime = [aDecoder decodeDoubleForKey:kDuanZiDataMinTime];
    self.maxTime = [aDecoder decodeDoubleForKey:kDuanZiDataMaxTime];
    self.tip = [aDecoder decodeObjectForKey:kDuanZiDataTip];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_hasMore forKey:kDuanZiDataHasMore];
    [aCoder encodeObject:_data forKey:kDuanZiDataData];
    [aCoder encodeDouble:_minTime forKey:kDuanZiDataMinTime];
    [aCoder encodeDouble:_maxTime forKey:kDuanZiDataMaxTime];
    [aCoder encodeObject:_tip forKey:kDuanZiDataTip];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiData *copy = [[DuanZiData alloc] init];
    
    if (copy) {

        copy.hasMore = self.hasMore;
        copy.data = [self.data copyWithZone:zone];
        copy.minTime = self.minTime;
        copy.maxTime = self.maxTime;
        copy.tip = [self.tip copyWithZone:zone];
    }
    
    return copy;
}


@end
