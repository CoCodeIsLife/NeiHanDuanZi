//
//  DuanZiCell.h
//  DuanZi
//
//  Created by liuyanqi on 16/6/30.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DuanZiPC.h"
#import "DuanZiDataModels.h"
@interface DuanZiCell : UITableViewCell
{
    DuanZiComments *commentsOne;
    DuanZiComments *commentsTwo;
    
}

@property (nonatomic,strong)DuanZiPC *pc;

@property(nonatomic,strong)UIButton *buttonHead;  //头像
@property(nonatomic,strong)UIButton *buttonName;          //用户名
@property(nonatomic,strong)UIImageView *imageViewHot;   //热门
@property(nonatomic,strong)UIButton *buttonClose;       //关闭
@property(nonatomic,strong)UILabel *labelContent;       //内容
@property(nonatomic,strong)UIButton *buttonCommend;     //赞
@property(nonatomic,strong)UIButton *buttonStep;        //踩
@property(nonatomic,strong)UIButton *buttonComment;     //评论
@property(nonatomic,strong)UIButton *buttonShare;       //分享
@property(nonatomic,strong)UILabel *labelCommend;
@property(nonatomic,strong)UILabel *labelStep;
@property(nonatomic,strong)UILabel *labelComment;
@property(nonatomic,strong)UILabel *labelShare;

@property(nonatomic,strong)UIView *viewBig;            //容纳按钮的view

@property(nonatomic,strong)UIButton *buttonCategory;           //类别
@property(nonatomic,strong)UIView *viewColor;               //颜色条


//************************************************
@property(nonatomic,strong)UIView *viewComments;          //神评视图
//**************
@property(nonatomic,strong)UIView *viewCommentsOne;
@property(nonatomic,strong)UIButton *buttonHeadOne;      //头像
@property(nonatomic,strong)UIButton *buttonNameOne;          //用户名
@property(nonatomic,strong)UIButton *buttonCommendOne;     //赞
@property(nonatomic,strong)UILabel *labelCommendOne;
@property(nonatomic,strong)UILabel *labelContentOne;
//*******************
@property(nonatomic,strong)UIView *viewCommentsTwo;
@property(nonatomic,strong)UIButton *buttonHeadTwo;      //头像
@property(nonatomic,strong)UIButton *buttonNameTwo;          //用户名
@property(nonatomic,strong)UIButton *buttonCommendTwo;     //赞
@property(nonatomic,strong)UILabel *labelCommendTwo;
@property(nonatomic,strong)UILabel *labelContentTwo;






@end
