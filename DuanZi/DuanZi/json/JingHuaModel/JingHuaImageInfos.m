//
//  JingHuaImageInfos.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaImageInfos.h"


NSString *const kJingHuaImageInfosWebUri = @"web_uri";
NSString *const kJingHuaImageInfosImageType = @"image_type";
NSString *const kJingHuaImageInfosWidth = @"width";
NSString *const kJingHuaImageInfosDesc = @"desc";
NSString *const kJingHuaImageInfosHeight = @"height";


@interface JingHuaImageInfos ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaImageInfos

@synthesize webUri = _webUri;
@synthesize imageType = _imageType;
@synthesize width = _width;
@synthesize desc = _desc;
@synthesize height = _height;


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
            self.webUri = [self objectOrNilForKey:kJingHuaImageInfosWebUri fromDictionary:dict];
            self.imageType = [[self objectOrNilForKey:kJingHuaImageInfosImageType fromDictionary:dict] doubleValue];
            self.width = [[self objectOrNilForKey:kJingHuaImageInfosWidth fromDictionary:dict] doubleValue];
            self.desc = [self objectOrNilForKey:kJingHuaImageInfosDesc fromDictionary:dict];
            self.height = [[self objectOrNilForKey:kJingHuaImageInfosHeight fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.webUri forKey:kJingHuaImageInfosWebUri];
    [mutableDict setValue:[NSNumber numberWithDouble:self.imageType] forKey:kJingHuaImageInfosImageType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.width] forKey:kJingHuaImageInfosWidth];
    [mutableDict setValue:self.desc forKey:kJingHuaImageInfosDesc];
    [mutableDict setValue:[NSNumber numberWithDouble:self.height] forKey:kJingHuaImageInfosHeight];

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

    self.webUri = [aDecoder decodeObjectForKey:kJingHuaImageInfosWebUri];
    self.imageType = [aDecoder decodeDoubleForKey:kJingHuaImageInfosImageType];
    self.width = [aDecoder decodeDoubleForKey:kJingHuaImageInfosWidth];
    self.desc = [aDecoder decodeObjectForKey:kJingHuaImageInfosDesc];
    self.height = [aDecoder decodeDoubleForKey:kJingHuaImageInfosHeight];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_webUri forKey:kJingHuaImageInfosWebUri];
    [aCoder encodeDouble:_imageType forKey:kJingHuaImageInfosImageType];
    [aCoder encodeDouble:_width forKey:kJingHuaImageInfosWidth];
    [aCoder encodeObject:_desc forKey:kJingHuaImageInfosDesc];
    [aCoder encodeDouble:_height forKey:kJingHuaImageInfosHeight];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaImageInfos *copy = [[JingHuaImageInfos alloc] init];
    
    if (copy) {

        copy.webUri = [self.webUri copyWithZone:zone];
        copy.imageType = self.imageType;
        copy.width = self.width;
        copy.desc = [self.desc copyWithZone:zone];
        copy.height = self.height;
    }
    
    return copy;
}


@end
