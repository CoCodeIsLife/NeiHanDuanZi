//
//  JingHuaBaseClass.h
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JingHuaNext;

@interface JingHuaBaseClass : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double hasMore;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSArray *data;
@property (nonatomic, strong) JingHuaNext *next;
@property (nonatomic, assign) double pageType;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
