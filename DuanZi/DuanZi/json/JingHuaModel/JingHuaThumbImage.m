//
//  JingHuaThumbImage.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaThumbImage.h"
#import "JingHuaUrlList.h"


NSString *const kJingHuaThumbImageWidth = @"width";
NSString *const kJingHuaThumbImageUrlList = @"url_list";
NSString *const kJingHuaThumbImageHeight = @"height";
NSString *const kJingHuaThumbImageUri = @"uri";
NSString *const kJingHuaThumbImageUrl = @"url";


@interface JingHuaThumbImage ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaThumbImage

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
            self.width = [[self objectOrNilForKey:kJingHuaThumbImageWidth fromDictionary:dict] doubleValue];
    NSObject *receivedJingHuaUrlList = [dict objectForKey:kJingHuaThumbImageUrlList];
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
            self.height = [[self objectOrNilForKey:kJingHuaThumbImageHeight fromDictionary:dict] doubleValue];
            self.uri = [self objectOrNilForKey:kJingHuaThumbImageUri fromDictionary:dict];
            self.url = [self objectOrNilForKey:kJingHuaThumbImageUrl fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.width] forKey:kJingHuaThumbImageWidth];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForUrlList] forKey:kJingHuaThumbImageUrlList];
    [mutableDict setValue:[NSNumber numberWithDouble:self.height] forKey:kJingHuaThumbImageHeight];
    [mutableDict setValue:self.uri forKey:kJingHuaThumbImageUri];
    [mutableDict setValue:self.url forKey:kJingHuaThumbImageUrl];

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

    self.width = [aDecoder decodeDoubleForKey:kJingHuaThumbImageWidth];
    self.urlList = [aDecoder decodeObjectForKey:kJingHuaThumbImageUrlList];
    self.height = [aDecoder decodeDoubleForKey:kJingHuaThumbImageHeight];
    self.uri = [aDecoder decodeObjectForKey:kJingHuaThumbImageUri];
    self.url = [aDecoder decodeObjectForKey:kJingHuaThumbImageUrl];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_width forKey:kJingHuaThumbImageWidth];
    [aCoder encodeObject:_urlList forKey:kJingHuaThumbImageUrlList];
    [aCoder encodeDouble:_height forKey:kJingHuaThumbImageHeight];
    [aCoder encodeObject:_uri forKey:kJingHuaThumbImageUri];
    [aCoder encodeObject:_url forKey:kJingHuaThumbImageUrl];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaThumbImage *copy = [[JingHuaThumbImage alloc] init];
    
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
