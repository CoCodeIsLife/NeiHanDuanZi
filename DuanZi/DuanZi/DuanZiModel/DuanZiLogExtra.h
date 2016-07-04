//
//  DuanZiLogExtra.h
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface DuanZiLogExtra : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double rit;
@property (nonatomic, strong) NSString *reqId;
@property (nonatomic, strong) NSString *adPrice;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
