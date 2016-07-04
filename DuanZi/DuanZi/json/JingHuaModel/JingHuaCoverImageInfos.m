//
//  JingHuaCoverImageInfos.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaCoverImageInfos.h"


NSString *const kJingHuaCoverImageInfosWebUri = @"web_uri";
NSString *const kJingHuaCoverImageInfosMimetype = @"mimetype";
NSString *const kJingHuaCoverImageInfosImageType = @"image_type";
NSString *const kJingHuaCoverImageInfosHeight = @"height";
NSString *const kJingHuaCoverImageInfosWidth = @"width";
NSString *const kJingHuaCoverImageInfosDesc = @"desc";


@interface JingHuaCoverImageInfos ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaCoverImageInfos

@synthesize webUri = _webUri;
@synthesize mimetype = _mimetype;
@synthesize imageType = _imageType;
@synthesize height = _height;
@synthesize width = _width;
@synthesize desc = _desc;


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
            self.webUri = [self objectOrNilForKey:kJingHuaCoverImageInfosWebUri fromDictionary:dict];
            self.mimetype = [self objectOrNilForKey:kJingHuaCoverImageInfosMimetype fromDictionary:dict];
            self.imageType = [[self objectOrNilForKey:kJingHuaCoverImageInfosImageType fromDictionary:dict] doubleValue];
            self.height = [[self objectOrNilForKey:kJingHuaCoverImageInfosHeight fromDictionary:dict] doubleValue];
            self.width = [[self objectOrNilForKey:kJingHuaCoverImageInfosWidth fromDictionary:dict] doubleValue];
            self.desc = [self objectOrNilForKey:kJingHuaCoverImageInfosDesc fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.webUri forKey:kJingHuaCoverImageInfosWebUri];
    [mutableDict setValue:self.mimetype forKey:kJingHuaCoverImageInfosMimetype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.imageType] forKey:kJingHuaCoverImageInfosImageType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.height] forKey:kJingHuaCoverImageInfosHeight];
    [mutableDict setValue:[NSNumber numberWithDouble:self.width] forKey:kJingHuaCoverImageInfosWidth];
    [mutableDict setValue:self.desc forKey:kJingHuaCoverImageInfosDesc];

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

    self.webUri = [aDecoder decodeObjectForKey:kJingHuaCoverImageInfosWebUri];
    self.mimetype = [aDecoder decodeObjectForKey:kJingHuaCoverImageInfosMimetype];
    self.imageType = [aDecoder decodeDoubleForKey:kJingHuaCoverImageInfosImageType];
    self.height = [aDecoder decodeDoubleForKey:kJingHuaCoverImageInfosHeight];
    self.width = [aDecoder decodeDoubleForKey:kJingHuaCoverImageInfosWidth];
    self.desc = [aDecoder decodeObjectForKey:kJingHuaCoverImageInfosDesc];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_webUri forKey:kJingHuaCoverImageInfosWebUri];
    [aCoder encodeObject:_mimetype forKey:kJingHuaCoverImageInfosMimetype];
    [aCoder encodeDouble:_imageType forKey:kJingHuaCoverImageInfosImageType];
    [aCoder encodeDouble:_height forKey:kJingHuaCoverImageInfosHeight];
    [aCoder encodeDouble:_width forKey:kJingHuaCoverImageInfosWidth];
    [aCoder encodeObject:_desc forKey:kJingHuaCoverImageInfosDesc];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaCoverImageInfos *copy = [[JingHuaCoverImageInfos alloc] init];
    
    if (copy) {

        copy.webUri = [self.webUri copyWithZone:zone];
        copy.mimetype = [self.mimetype copyWithZone:zone];
        copy.imageType = self.imageType;
        copy.height = self.height;
        copy.width = self.width;
        copy.desc = [self.desc copyWithZone:zone];
    }
    
    return copy;
}


@end
