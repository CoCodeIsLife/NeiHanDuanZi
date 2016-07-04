//
//  JingHuaImageDetail.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaImageDetail.h"
#import "JingHuaUrlList.h"


NSString *const kJingHuaImageDetailWidth = @"width";
NSString *const kJingHuaImageDetailUrlList = @"url_list";
NSString *const kJingHuaImageDetailHeight = @"height";
NSString *const kJingHuaImageDetailUri = @"uri";
NSString *const kJingHuaImageDetailUrl = @"url";


@interface JingHuaImageDetail ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaImageDetail

@synthesize width = _width;
@synthesize urlList = _urlList;
@synthesize height = _height;
@synthesize uri = _uri;
@synthesize url = _url;


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
            self.width = [[self objectOrNilForKey:kJingHuaImageDetailWidth fromDictionary:dict] doubleValue];
    NSObject *receivedJingHuaUrlList = [dict objectForKey:kJingHuaImageDetailUrlList];
    NSMutableArray *parsedJingHuaUrlList = [NSMutableArray array];
    if ([receivedJingHuaUrlList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedJingHuaUrlList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedJingHuaUrlList addObject:[JingHuaUrlList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedJingHuaUrlList isKindOfClass:[NSDictionary class]]) {
       [parsedJingHuaUrlList addObject:[JingHuaUrlList modelObjectWithDictionary:(NSDictionary *)receivedJingHuaUrlList]];
    }

    self.urlList = [NSArray arrayWithArray:parsedJingHuaUrlList];
            self.height = [[self objectOrNilForKey:kJingHuaImageDetailHeight fromDictionary:dict] doubleValue];
            self.uri = [self objectOrNilForKey:kJingHuaImageDetailUri fromDictionary:dict];
            self.url = [self objectOrNilForKey:kJingHuaImageDetailUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.width] forKey:kJingHuaImageDetailWidth];
    NSMutableArray *tempArrayForUrlList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.urlList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForUrlList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForUrlList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUrlList] forKey:kJingHuaImageDetailUrlList];
    [mutableDict setValue:[NSNumber numberWithDouble:self.height] forKey:kJingHuaImageDetailHeight];
    [mutableDict setValue:self.uri forKey:kJingHuaImageDetailUri];
    [mutableDict setValue:self.url forKey:kJingHuaImageDetailUrl];

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

    self.width = [aDecoder decodeDoubleForKey:kJingHuaImageDetailWidth];
    self.urlList = [aDecoder decodeObjectForKey:kJingHuaImageDetailUrlList];
    self.height = [aDecoder decodeDoubleForKey:kJingHuaImageDetailHeight];
    self.uri = [aDecoder decodeObjectForKey:kJingHuaImageDetailUri];
    self.url = [aDecoder decodeObjectForKey:kJingHuaImageDetailUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_width forKey:kJingHuaImageDetailWidth];
    [aCoder encodeObject:_urlList forKey:kJingHuaImageDetailUrlList];
    [aCoder encodeDouble:_height forKey:kJingHuaImageDetailHeight];
    [aCoder encodeObject:_uri forKey:kJingHuaImageDetailUri];
    [aCoder encodeObject:_url forKey:kJingHuaImageDetailUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaImageDetail *copy = [[JingHuaImageDetail alloc] init];
    
    if (copy) {

        copy.width = self.width;
        copy.urlList = [self.urlList copyWithZone:zone];
        copy.height = self.height;
        copy.uri = [self.uri copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
    }
    
    return copy;
}


@end
