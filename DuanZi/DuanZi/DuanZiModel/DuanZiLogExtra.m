//
//  DuanZiLogExtra.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiLogExtra.h"


NSString *const kDuanZiLogExtraRit = @"rit";
NSString *const kDuanZiLogExtraReqId = @"req_id";
NSString *const kDuanZiLogExtraAdPrice = @"ad_price";


@interface DuanZiLogExtra ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiLogExtra

@synthesize rit = _rit;
@synthesize reqId = _reqId;
@synthesize adPrice = _adPrice;


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
            self.rit = [[self objectOrNilForKey:kDuanZiLogExtraRit fromDictionary:dict] doubleValue];
            self.reqId = [self objectOrNilForKey:kDuanZiLogExtraReqId fromDictionary:dict];
            self.adPrice = [self objectOrNilForKey:kDuanZiLogExtraAdPrice fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rit] forKey:kDuanZiLogExtraRit];
    [mutableDict setValue:self.reqId forKey:kDuanZiLogExtraReqId];
    [mutableDict setValue:self.adPrice forKey:kDuanZiLogExtraAdPrice];

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

    self.rit = [aDecoder decodeDoubleForKey:kDuanZiLogExtraRit];
    self.reqId = [aDecoder decodeObjectForKey:kDuanZiLogExtraReqId];
    self.adPrice = [aDecoder decodeObjectForKey:kDuanZiLogExtraAdPrice];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_rit forKey:kDuanZiLogExtraRit];
    [aCoder encodeObject:_reqId forKey:kDuanZiLogExtraReqId];
    [aCoder encodeObject:_adPrice forKey:kDuanZiLogExtraAdPrice];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiLogExtra *copy = [[DuanZiLogExtra alloc] init];
    
    if (copy) {

        copy.rit = self.rit;
        copy.reqId = [self.reqId copyWithZone:zone];
        copy.adPrice = [self.adPrice copyWithZone:zone];
    }
    
    return copy;
}


@end
