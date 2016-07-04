//
//  DuanZiComments.h
//
//  Created by   on 16/7/2
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface DuanZiComments : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double commentsIdentifier;
@property (nonatomic, strong) NSString *commentsDescription;
@property (nonatomic, assign) double userDigg;
@property (nonatomic, assign) double buryCount;
@property (nonatomic, strong) NSString *avatarUrl;
@property (nonatomic, assign) double userId;
@property (nonatomic, assign) double userBury;
@property (nonatomic, strong) NSString *userProfileUrl;
@property (nonatomic, strong) NSString *userProfileImageUrl;
@property (nonatomic, strong) NSString *platform;
@property (nonatomic, assign) BOOL userVerified;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) double groupId;
@property (nonatomic, strong) NSString *platformId;
@property (nonatomic, assign) double isDigg;
@property (nonatomic, assign) double createTime;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, assign) double status;
@property (nonatomic, assign) double diggCount;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
