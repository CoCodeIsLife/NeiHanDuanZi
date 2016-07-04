//
//  JingHuaImageInfos.h
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface JingHuaImageInfos : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *webUri;
@property (nonatomic, assign) double imageType;
@property (nonatomic, assign) double width;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, assign) double height;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
