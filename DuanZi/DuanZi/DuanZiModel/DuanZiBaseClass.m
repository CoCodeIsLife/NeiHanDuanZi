//
//  DuanZiBaseClass.m
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "DuanZiBaseClass.h"
#import "DuanZiData.h"


NSString *const kDuanZiBaseClassMessage = @"message";
NSString *const kDuanZiBaseClassData = @"data";


@interface DuanZiBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation DuanZiBaseClass

@synthesize message = _message;
@synthesize data = _data;


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
            self.message = [self objectOrNilForKey:kDuanZiBaseClassMessage fromDictionary:dict];
            self.data = [DuanZiData modelObjectWithDictionary:[dict objectForKey:kDuanZiBaseClassData]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.message forKey:kDuanZiBaseClassMessage];
    [mutableDict setValue:[self.data dictionaryRepresentation] forKey:kDuanZiBaseClassData];

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

    self.message = [aDecoder decodeObjectForKey:kDuanZiBaseClassMessage];
    self.data = [aDecoder decodeObjectForKey:kDuanZiBaseClassData];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_message forKey:kDuanZiBaseClassMessage];
    [aCoder encodeObject:_data forKey:kDuanZiBaseClassData];
}

- (id)copyWithZone:(NSZone *)zone
{
    DuanZiBaseClass *copy = [[DuanZiBaseClass alloc] init];
    
    if (copy) {

        copy.message = [self.message copyWithZone:zone];
        copy.data = [self.data copyWithZone:zone];
    }
    
    return copy;
}


@end
