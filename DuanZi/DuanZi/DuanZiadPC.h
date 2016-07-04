//
//  DuanZiadPC.h
//  DuanZi
//
//  Created by liuyanqi on 16/7/2.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DuanZiadPC : NSObject

@property(nonatomic,strong)NSDictionary *dictData;

@property(nonatomic,assign)CGRect rectHead;  //头像
@property(nonatomic,assign)CGRect rectName;          //用户名
@property(nonatomic,assign)CGRect rectContent;   //文本
@property(nonatomic,assign)CGRect rectSpread;       //推广
@property(nonatomic,assign)CGRect rectDownLoad;       //下载
@property(nonatomic,assign)CGRect rectImageView;     //赞
@property(nonatomic,assign)CGRect rectViewColor;

@property(nonatomic,assign)CGFloat cellHeight;

@end
