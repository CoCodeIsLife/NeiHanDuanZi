//
//  DuanZiPC.m
//  DuanZi
//
//  Created by liuyanqi on 16/7/1.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//
#define WIDTH [UIScreen mainScreen].bounds.size.width
#import "DuanZiPC.h"
#import "DuanZiDataModels.h"
@implementation DuanZiPC


- (void)setDictData:(NSDictionary *)dictData{
    
    _dictData  = dictData;
    
    DuanZiGroup *group =[DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
//    NSLog(@"PCPCPCPCPCCPPCPCPCPCPCCP===%@",group.text);
    
    //热门标签
    _rectHotPic = CGRectMake(0, 20, 12, 24);

    //头像图标
    _rectHead = CGRectMake(20, 20, 30, 30);
  
    //用户名label
    _rectName = CGRectMake(60, 27, 120, 17);

    //关闭按钮
    _rectClose = CGRectMake(WIDTH - 35, 0, 35, 35);
    
    
    //文字矩形块儿
    CGRect contentRect = [group.text boundingRectWithSize:CGSizeMake(WIDTH - 45, LONG_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    //文字内容
    _rectContent = CGRectMake(15, 70, WIDTH - 45, contentRect.size.height);
    
    //类别标签
        //文字矩形块儿
    CGRect categoryRect = [group.categoryName boundingRectWithSize:CGSizeMake(LONG_MAX, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12]} context:nil];
  
    _rectBtnCategory = CGRectMake(15, CGRectGetMaxY(_rectContent)+10, categoryRect.size.width + 10, 20);
//****************************************************************************************************************************************************************************************    //神评坐标


    _arrayComment =dictData[@"comments"];

    //没有神评
    if (_arrayComment.count == 0) {
        //神评View
        _rectViewComments = CGRectMake(10, CGRectGetMaxY(_rectBtnCategory)+10, WIDTH - 20, 0);
    }
    //一条神评
    if (_arrayComment.count == 1) {
        
        [self viewCommentsOne];
        //神评View的Frame
        _rectViewComments = CGRectMake(10, CGRectGetMaxY(_rectBtnCategory) + 10, WIDTH - 20,10 + CGRectGetHeight(_rectViewCommentsOne));

    }
    //两条神评
    if (_arrayComment.count == 2) {
        
        [self viewCommentsOne];
        
        [self viewCommentsTwo];
    }
    
//**************************************************************************************************************************************************************************************************************************************************************
    //按钮组View
    _rectViewBig = CGRectMake(0, CGRectGetMaxY(_rectViewComments), WIDTH, 60);
    
      //赞
    _rectBtnCommend = CGRectMake(20, 9, 32, 32);
    _rectLabCommand = CGRectMake(CGRectGetMaxX(_rectBtnCommend) + 1, 17, 32, 16);

    //踩
    _rectBtnStep = CGRectMake(CGRectGetMaxX(_rectLabCommand) + 10, 9, 32, 32);
    _rectLabStep = CGRectMake(CGRectGetMaxX(_rectBtnStep) + 1, 17, 32, 16);
    
    //评论
    _rectBtnComment = CGRectMake(CGRectGetMaxX(_rectLabStep) + 10, 9, 32,32);
    _rectLabComment = CGRectMake(CGRectGetMaxX(_rectBtnComment) + 1, 17, 32, 16);
    
    //分享
    _rectBtnShare = CGRectMake(CGRectGetMaxX(_rectLabComment) + 10, 9, 32, 32);
    _rectLabShare = CGRectMake(CGRectGetMaxX(_rectBtnShare) + 1, 17, 32, 16);
    
    
    //颜色条
    _rectViewColor =CGRectMake(0,50, WIDTH, 10);
    
    //单元格高度
    _cellHeight = CGRectGetMaxY(_rectViewBig);
    
}
//给第一条神评赋值 坐标
-(void)viewCommentsOne
{
    NSDictionary *dictComment = _arrayComment[0];
    DuanZiComments *comments = [DuanZiComments modelObjectWithDictionary:dictComment];
    
//    NSLog(@"11111111111111111111111111111111111%@",comments.text);
    
    //评论内容
    CGRect rectOne = [comments.text boundingRectWithSize:CGSizeMake(WIDTH - 90, LONG_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    
    //评论内容label
    _rectLabContentOne = CGRectMake(45, 20+17+15, WIDTH - 90, rectOne.size.height);


    //神评One的view的Frame
    _rectViewCommentsOne = CGRectMake(0, 0, WIDTH - 20, 20+17+15 + rectOne.size.height);
    
    
    //头像
    _rectButtonHeadOne = CGRectMake(10, 15, 30, 30);
    //用户名
    _rectButtonNameOne = CGRectMake(45, 20, 150, 17);
    
    
    //赞
    _rectButtonCommendOne = CGRectMake(_rectViewCommentsOne.size.width - 80, 15, 27, 27);
    
    //赞数
    _rectLabCommendOne = CGRectMake(_rectViewCommentsOne.size.width - 50, 23, 50, 10);
    
    
}
//神评Two   赋值坐标
-(void)viewCommentsTwo
{
    NSDictionary *dictComment = _arrayComment[1];
    DuanZiComments *comments = [DuanZiComments modelObjectWithDictionary:dictComment];
    
//    NSLog(@"222222222222222222222222222222222222222222222%@",comments.text);
    
    //评论内容
    CGRect rectTwo = [comments.text boundingRectWithSize:CGSizeMake(WIDTH - 90, LONG_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    
    //评论内容label
    _rectLabContentTwo = CGRectMake(45, 20+17+15, WIDTH - 90,rectTwo.size.height);
    
    //神评Two的view的Frame
    _rectViewCommentsTwo = CGRectMake(0, CGRectGetMaxY(_rectViewCommentsOne), WIDTH - 20, 52 + rectTwo.size.height);
    
    
    //头像
    _rectButtonHeadTwo = CGRectMake(10, 15, 30, 30);
    //用户名
    _rectButtonNameTwo = CGRectMake(45, 20, 150, 17);
    
    //赞
    _rectButtonCommendTwo = CGRectMake(_rectViewCommentsTwo.size.width - 80, 15, 27, 27);
    //赞数
    _rectLabCommendTwo = CGRectMake(_rectViewCommentsTwo.size.width - 50, 23, 50, 10);
    
        //神评View的Frame
    _rectViewComments = CGRectMake(10, CGRectGetMaxY(_rectBtnCategory) + 10, WIDTH - 20, 10 + CGRectGetMaxY(_rectViewCommentsTwo));

}




@end













