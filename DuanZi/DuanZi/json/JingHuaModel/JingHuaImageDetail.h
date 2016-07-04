//
//  JingHuaImageDetail.h
//
//  Created by   on 16/6/29
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface JingHuaImageDetail : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double width;
@property (nonatomic, strong) NSArray *urlList;
@property (nonatomic, assign) double height;
@property (nonatomic, strong) NSString *uri;
@property (nonatomic, strong) NSString *url;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
