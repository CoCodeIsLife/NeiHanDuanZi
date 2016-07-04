//
//  DuanZiAd.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiAd.h"
#import "DuanZiLogExtra.h"


NSString *const kDuanZiAdLogExtra = @"log_extra";
NSString *const kDuanZiAdTitle = @"title";
NSString *const kDuanZiAdGifUrl = @"gif_url";
NSString *const kDuanZiAdButtonText = @"button_text";
NSString *const kDuanZiAdDisplayImageHeight = @"display_image_height";
NSString *const kDuanZiAdIsAd = @"is_ad";
NSString *const kDuanZiAdTrackUrlList = @"track_url_list";
NSString *const kDuanZiAdAvatarName = @"avatar_name";
NSString *const kDuanZiAdWebUrl = @"web_url";
NSString *const kDuanZiAdTrackUrl = @"track_url";
NSString *const kDuanZiAdAvatarUrl = @"avatar_url";
NSString *const kDuanZiAdType = @"type";
NSString *const kDuanZiAdId = @"id";
NSString *const kDuanZiAdDisplayType = @"display_type";
NSString *const kDuanZiAdDisplayInfo = @"display_info";
NSString *const kDuanZiAdLabel = @"label";
NSString *const kDuanZiAdAdIndex = @"ad_index";
NSString *const kDuanZiAdDisplayImage = @"display_image";
NSString *const kDuanZiAdEndTime = @"end_time";
NSString *const kDuanZiAdAdId = @"ad_id";
NSString *const kDuanZiAdDisplayImageWidth = @"display_image_width";


@interface DuanZiAd ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiAd

@synthesize logExtra = _logExtra;
@synthesize title = _title;
@synthesize gifUrl = _gifUrl;
@synthesize buttonText = _buttonText;
@synthesize displayImageHeight = _displayImageHeight;
@synthesize isAd = _isAd;
@synthesize trackUrlList = _trackUrlList;
@synthesize avatarName = _avatarName;
@synthesize webUrl = _webUrl;
@synthesize trackUrl = _trackUrl;
@synthesize avatarUrl = _avatarUrl;
@synthesize type = _type;
@synthesize adIdentifier = _adIdentifier;
@synthesize displayType = _displayType;
@synthesize displayInfo = _displayInfo;
@synthesize label = _label;
@synthesize adIndex = _adIndex;
@synthesize displayImage = _displayImage;
@synthesize endTime = _endTime;
@synthesize adId = _adId;
@synthesize displayImageWidth = _displayImageWidth;


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
            self.logExtra = [DuanZiLogExtra modelObjectWithDictionary:[dict objectForKey:kDuanZiAdLogExtra]];
            self.title = [self objectOrNilForKey:kDuanZiAdTitle fromDictionary:dict];
            self.gifUrl = [self objectOrNilForKey:kDuanZiAdGifUrl fromDictionary:dict];
            self.buttonText = [self objectOrNilForKey:kDuanZiAdButtonText fromDictionary:dict];
            self.displayImageHeight = [[self objectOrNilForKey:kDuanZiAdDisplayImageHeight fromDictionary:dict] doubleValue];
            self.isAd = [[self objectOrNilForKey:kDuanZiAdIsAd fromDictionary:dict] doubleValue];
            self.trackUrlList = [self objectOrNilForKey:kDuanZiAdTrackUrlList fromDictionary:dict];
            self.avatarName = [self objectOrNilForKey:kDuanZiAdAvatarName fromDictionary:dict];
            self.webUrl = [self objectOrNilForKey:kDuanZiAdWebUrl fromDictionary:dict];
            self.trackUrl = [self objectOrNilForKey:kDuanZiAdTrackUrl fromDictionary:dict];
            self.avatarUrl = [self objectOrNilForKey:kDuanZiAdAvatarUrl fromDictionary:dict];
            self.type = [self objectOrNilForKey:kDuanZiAdType fromDictionary:dict];
            self.adIdentifier = [[self objectOrNilForKey:kDuanZiAdId fromDictionary:dict] doubleValue];
            self.displayType = [[self objectOrNilForKey:kDuanZiAdDisplayType fromDictionary:dict] doubleValue];
            self.displayInfo = [self objectOrNilForKey:kDuanZiAdDisplayInfo fromDictionary:dict];
            self.label = [self objectOrNilForKey:kDuanZiAdLabel fromDictionary:dict];
            self.adIndex = [[self objectOrNilForKey:kDuanZiAdAdIndex fromDictionary:dict] doubleValue];
            self.displayImage = [self objectOrNilForKey:kDuanZiAdDisplayImage fromDictionary:dict];
            self.endTime = [[self objectOrNilForKey:kDuanZiAdEndTime fromDictionary:dict] doubleValue];
            self.adId = [[self objectOrNilForKey:kDuanZiAdAdId fromDictionary:dict] doubleValue];
            self.displayImageWidth = [[self objectOrNilForKey:kDuanZiAdDisplayImageWidth fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.logExtra dictionaryRepresentation] forKey:kDuanZiAdLogExtra];
    [mutableDict setValue:self.title forKey:kDuanZiAdTitle];
    [mutableDict setValue:self.gifUrl forKey:kDuanZiAdGifUrl];
    [mutableDict setValue:self.buttonText forKey:kDuanZiAdButtonText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayImageHeight] forKey:kDuanZiAdDisplayImageHeight];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isAd] forKey:kDuanZiAdIsAd];
    NSMutableArray *tempArrayForTrackUrlList = [NSMutableArray array];
    for (NSObject *subArrayObject in self.trackUrlList) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTrackUrlList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTrackUrlList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTrackUrlList] forKey:kDuanZiAdTrackUrlList];
    [mutableDict setValue:self.avatarName forKey:kDuanZiAdAvatarName];
    [mutableDict setValue:self.webUrl forKey:kDuanZiAdWebUrl];
    [mutableDict setValue:self.trackUrl forKey:kDuanZiAdTrackUrl];
    [mutableDict setValue:self.avatarUrl forKey:kDuanZiAdAvatarUrl];
    [mutableDict setValue:self.type forKey:kDuanZiAdType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adIdentifier] forKey:kDuanZiAdId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayType] forKey:kDuanZiAdDisplayType];
    [mutableDict setValue:self.displayInfo forKey:kDuanZiAdDisplayInfo];
    [mutableDict setValue:self.label forKey:kDuanZiAdLabel];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adIndex] forKey:kDuanZiAdAdIndex];
    [mutableDict setValue:self.displayImage forKey:kDuanZiAdDisplayImage];
    [mutableDict setValue:[NSNumber numberWithDouble:self.endTime] forKey:kDuanZiAdEndTime];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adId] forKey:kDuanZiAdAdId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayImageWidth] forKey:kDuanZiAdDisplayImageWidth];

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

    self.logExtra = [aDecoder decodeObjectForKey:kDuanZiAdLogExtra];
    self.title = [aDecoder decodeObjectForKey:kDuanZiAdTitle];
    self.gifUrl = [aDecoder decodeObjectForKey:kDuanZiAdGifUrl];
    self.buttonText = [aDecoder decodeObjectForKey:kDuanZiAdButtonText];
    self.displayImageHeight = [aDecoder decodeDoubleForKey:kDuanZiAdDisplayImageHeight];
    self.isAd = [aDecoder decodeDoubleForKey:kDuanZiAdIsAd];
    self.trackUrlList = [aDecoder decodeObjectForKey:kDuanZiAdTrackUrlList];
    self.avatarName = [aDecoder decodeObjectForKey:kDuanZiAdAvatarName];
    self.webUrl = [aDecoder decodeObjectForKey:kDuanZiAdWebUrl];
    self.trackUrl = [aDecoder decodeObjectForKey:kDuanZiAdTrackUrl];
    self.avatarUrl = [aDecoder decodeObjectForKey:kDuanZiAdAvatarUrl];
    self.type = [aDecoder decodeObjectForKey:kDuanZiAdType];
    self.adIdentifier = [aDecoder decodeDoubleForKey:kDuanZiAdId];
    self.displayType = [aDecoder decodeDoubleForKey:kDuanZiAdDisplayType];
    self.displayInfo = [aDecoder decodeObjectForKey:kDuanZiAdDisplayInfo];
    self.label = [aDecoder decodeObjectForKey:kDuanZiAdLabel];
    self.adIndex = [aDecoder decodeDoubleForKey:kDuanZiAdAdIndex];
    self.displayImage = [aDecoder decodeObjectForKey:kDuanZiAdDisplayImage];
    self.endTime = [aDecoder decodeDoubleForKey:kDuanZiAdEndTime];
    self.adId = [aDecoder decodeDoubleForKey:kDuanZiAdAdId];
    self.displayImageWidth = [aDecoder decodeDoubleForKey:kDuanZiAdDisplayImageWidth];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_logExtra forKey:kDuanZiAdLogExtra];
    [aCoder encodeObject:_title forKey:kDuanZiAdTitle];
    [aCoder encodeObject:_gifUrl forKey:kDuanZiAdGifUrl];
    [aCoder encodeObject:_buttonText forKey:kDuanZiAdButtonText];
    [aCoder encodeDouble:_displayImageHeight forKey:kDuanZiAdDisplayImageHeight];
    [aCoder encodeDouble:_isAd forKey:kDuanZiAdIsAd];
    [aCoder encodeObject:_trackUrlList forKey:kDuanZiAdTrackUrlList];
    [aCoder encodeObject:_avatarName forKey:kDuanZiAdAvatarName];
    [aCoder encodeObject:_webUrl forKey:kDuanZiAdWebUrl];
    [aCoder encodeObject:_trackUrl forKey:kDuanZiAdTrackUrl];
    [aCoder encodeObject:_avatarUrl forKey:kDuanZiAdAvatarUrl];
    [aCoder encodeObject:_type forKey:kDuanZiAdType];
    [aCoder encodeDouble:_adIdentifier forKey:kDuanZiAdId];
    [aCoder encodeDouble:_displayType forKey:kDuanZiAdDisplayType];
    [aCoder encodeObject:_displayInfo forKey:kDuanZiAdDisplayInfo];
    [aCoder encodeObject:_label forKey:kDuanZiAdLabel];
    [aCoder encodeDouble:_adIndex forKey:kDuanZiAdAdIndex];
    [aCoder encodeObject:_displayImage forKey:kDuanZiAdDisplayImage];
    [aCoder encodeDouble:_endTime forKey:kDuanZiAdEndTime];
    [aCoder encodeDouble:_adId forKey:kDuanZiAdAdId];
    [aCoder encodeDouble:_displayImageWidth forKey:kDuanZiAdDisplayImageWidth];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiAd *copy = [[DuanZiAd alloc] init];
    
    if (copy) {

        copy.logExtra = [self.logExtra copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.gifUrl = [self.gifUrl copyWithZone:zone];
        copy.buttonText = [self.buttonText copyWithZone:zone];
        copy.displayImageHeight = self.displayImageHeight;
        copy.isAd = self.isAd;
        copy.trackUrlList = [self.trackUrlList copyWithZone:zone];
        copy.avatarName = [self.avatarName copyWithZone:zone];
        copy.webUrl = [self.webUrl copyWithZone:zone];
        copy.trackUrl = [self.trackUrl copyWithZone:zone];
        copy.avatarUrl = [self.avatarUrl copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.adIdentifier = self.adIdentifier;
        copy.displayType = self.displayType;
        copy.displayInfo = [self.displayInfo copyWithZone:zone];
        copy.label = [self.label copyWithZone:zone];
        copy.adIndex = self.adIndex;
        copy.displayImage = [self.displayImage copyWithZone:zone];
        copy.endTime = self.endTime;
        copy.adId = self.adId;
        copy.displayImageWidth = self.displayImageWidth;
    }
    
    return copy;
}


@end
