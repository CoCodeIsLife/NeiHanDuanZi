//
//  DuanZiUser.h
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface DuanZiUser : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL userVerified;
@property (nonatomic, assign) double ugcCount;
@property (nonatomic, assign) BOOL isFollowing;
@property (nonatomic, assign) double followers;
@property (nonatomic, assign) double followings;
@property (nonatomic, assign) double userId;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *avatarUrl;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
