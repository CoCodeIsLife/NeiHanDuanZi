//
//  JingHuaVerifyDetail.m
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "JingHuaVerifyDetail.h"
#import "JingHuaAutoClass.h"
#import "JingHuaEditor.h"


NSString *const kJingHuaVerifyDetailAuto = @"auto";
NSString *const kJingHuaVerifyDetailEditor = @"editor";
NSString *const kJingHuaVerifyDetailPassTime = @"pass_time";


@interface JingHuaVerifyDetail ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation JingHuaVerifyDetail

@synthesize autoProperty = _autoProperty;
@synthesize editor = _editor;
@synthesize passTime = _passTime;


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
            self.autoProperty = [JingHuaAutoClass modelObjectWithDictionary:[dict objectForKey:kJingHuaVerifyDetailAuto]];
            self.editor = [JingHuaEditor modelObjectWithDictionary:[dict objectForKey:kJingHuaVerifyDetailEditor]];
            self.passTime = [self objectOrNilForKey:kJingHuaVerifyDetailPassTime fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.autoProperty dictionaryRepresentation] forKey:kJingHuaVerifyDetailAuto];
    [mutableDict setValue:[self.editor dictionaryRepresentation] forKey:kJingHuaVerifyDetailEditor];
    [mutableDict setValue:self.passTime forKey:kJingHuaVerifyDetailPassTime];

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

    self.autoProperty = [aDecoder decodeObjectForKey:kJingHuaVerifyDetailAuto];
    self.editor = [aDecoder decodeObjectForKey:kJingHuaVerifyDetailEditor];
    self.passTime = [aDecoder decodeObjectForKey:kJingHuaVerifyDetailPassTime];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_autoProperty forKey:kJingHuaVerifyDetailAuto];
    [aCoder encodeObject:_editor forKey:kJingHuaVerifyDetailEditor];
    [aCoder encodeObject:_passTime forKey:kJingHuaVerifyDetailPassTime];
}

- (id)copyWithZone:(NSZone *)zone
{
    JingHuaVerifyDetail *copy = [[JingHuaVerifyDetail alloc] init];
    
    if (copy) {

        copy.autoProperty = [self.autoProperty copyWithZone:zone];
        copy.editor = [self.editor copyWithZone:zone];
        copy.passTime = [self.passTime copyWithZone:zone];
    }
    
    return copy;
}


@end
