//
//  JingHuaBaseClass.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaBaseClass.h"
#import "JingHuaData.h"
#import "JingHuaNext.h"


NSString *const kJingHuaBaseClassHasMore = @"has_more";
NSString *const kJingHuaBaseClassMessage = @"message";
NSString *const kJingHuaBaseClassData = @"data";
NSString *const kJingHuaBaseClassNext = @"next";
NSString *const kJingHuaBaseClassPageType = @"page_type";


@interface JingHuaBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaBaseClass

@synthesize hasMore = _hasMore;
@synthesize message = _message;
@synthesize data = _data;
@synthesize next = _next;
@synthesize pageType = _pageType;


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
            self.hasMore = [[self objectOrNilForKey:kJingHuaBaseClassHasMore fromDictionary:dict] doubleValue];
            self.message = [self objectOrNilForKey:kJingHuaBaseClassMessage fromDictionary:dict];
    NSObject *receivedJingHuaData = [dict objectForKey:kJingHuaBaseClassData];
    NSMutableArray *parsedJingHuaData = [NSMutableArray array];
    if ([receivedJingHuaData isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaData) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaData addObject:[JingHuaData modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaData isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaData addObject:[JingHuaData modelObjectWithDictionary:(NSDictionary *)receivedJingHuaData]];
    }

    self.data = [NSArray arrayWithArray:parsedJingHuaData];
            self.next = [JingHuaNext modelObjectWithDictionary:[dict objectForKey:kJingHuaBaseClassNext]];
            self.pageType = [[self objectOrNilForKey:kJingHuaBaseClassPageType fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.hasMore] forKey:kJingHuaBaseClassHasMore];
    [mutableDict setValue:self.message forKey:kJingHuaBaseClassMessage];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForData] forKey:kJingHuaBaseClassData];
    [mutableDict setValue:[self.next dictionaryRepresentation] forKey:kJingHuaBaseClassNext];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kJingHuaBaseClassPageType];

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

    self.hasMore = [aDecoder decodeDoubleForKey:kJingHuaBaseClassHasMore];
    self.message = [aDecoder decodeObjectForKey:kJingHuaBaseClassMessage];
    self.data = [aDecoder decodeObjectForKey:kJingHuaBaseClassData];
    self.next = [aDecoder decodeObjectForKey:kJingHuaBaseClassNext];
    self.pageType = [aDecoder decodeDoubleForKey:kJingHuaBaseClassPageType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_hasMore forKey:kJingHuaBaseClassHasMore];
    [aCoder encodeObject:_message forKey:kJingHuaBaseClassMessage];
    [aCoder encodeObject:_data forKey:kJingHuaBaseClassData];
    [aCoder encodeObject:_next forKey:kJingHuaBaseClassNext];
    [aCoder encodeDouble:_pageType forKey:kJingHuaBaseClassPageType];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaBaseClass *copy = [[JingHuaBaseClass alloc] init];
    
    if (copy) {

        copy.hasMore = self.hasMore;
        copy.message = [self.message copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
        copy.next = [self.next copyWithZone:zone];
        copy.pageType = self.pageType;
    }
    
    return copy;
}


@end
