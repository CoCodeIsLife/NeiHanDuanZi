//
//  JingHuaVerifyDetail.h
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JingHuaAutoClass, JingHuaEditor;

@interface JingHuaVerifyDetail : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) JingHuaAutoClass *autoProperty;
@property (nonatomic, strong) JingHuaEditor *editor;
@property (nonatomic, strong) NSString *passTime;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
