//
//  DuanZiadPC.m
//  DuanZi
//
//  Created by liuyanqi on 16/7/2.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//
#define WIDTH [UIScreen mainScreen].bounds.size.width
#import "DuanZiadPC.h"
#import "DuanZiDataModels.h"
@implementation DuanZiadPC

-(void)setDictData:(NSDictionary *)dictData
{
    _dictData = dictData;
    
    DuanZiAd *adModel = [DuanZiAd modelObjectWithDictionary:dictData[@"ad"]];
    
    if (adModel) {
        
        //头像
        _rectHead = CGRectMake(20, 20, 30, 30);
        
        //名字
        _rectName = CGRectMake(65, 27, 100, 17);
        
        //文本
        
        NSString *strContent = adModel.title;
        
        CGRect rectAd = [strContent boundingRectWithSize:CGSizeMake(WIDTH - 45, LONG_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
        _rectContent = CGRectMake(20, 27 + 17 + 15, WIDTH - 40, rectAd.size.height);
        
        //图片
        
        _rectImageView = CGRectMake(20, CGRectGetMaxY(_rectContent) + 10, WIDTH - 40,(WIDTH - 40)*37/56 );
        
        
        //推广
        
        _rectSpread = CGRectMake(20, CGRectGetMaxY(_rectImageView) + 15, 30, 13);
        
        //下载
        _rectDownLoad = CGRectMake(WIDTH - 140, CGRectGetMaxY(_rectImageView) + 10, 120, 30);
        
        //灰条
        _rectViewColor = CGRectMake(4, CGRectGetMaxY(_rectDownLoad) + 10, WIDTH, 10);
        
    
        //单元格高度
        _cellHeight = CGRectGetMaxY(_rectViewColor);
        
    }
            
    
}
@end
