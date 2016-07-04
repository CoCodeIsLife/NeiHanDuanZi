//
//  DuanZiPC.h
//  DuanZi
//
//  Created by liuyanqi on 16/7/1.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DuanZiPC : NSObject
{
    NSArray *_arrayComment;
}
@property(nonatomic,strong)NSDictionary *dictData;

@property(nonatomic,assign)CGRect rectHead;  //头像
@property(nonatomic,assign)CGRect rectName;          //用户名
@property(nonatomic,assign)CGRect rectHotPic;   //热门
@property(nonatomic,assign)CGRect rectClose;       //关闭
@property(nonatomic,assign)CGRect rectContent;       //内容
@property(nonatomic,assign)CGRect rectBtnCommend;     //赞
@property(nonatomic,assign)CGRect rectBtnStep;        //踩
@property(nonatomic,assign)CGRect rectBtnComment;     //评论
@property(nonatomic,assign)CGRect rectBtnShare;       //分享
@property(nonatomic,assign)CGRect rectLabCommand;
@property(nonatomic,assign)CGRect rectLabStep;
@property(nonatomic,assign)CGRect rectLabComment;
@property(nonatomic,assign)CGRect rectLabShare;
@property(nonatomic,assign)CGRect rectViewBig;            //容纳按钮的view
@property(nonatomic,assign)CGRect rectBtnCategory;           //类别
@property(nonatomic,assign)CGRect rectViewColor;
//****************************************************************************************************
@property(nonatomic,assign)CGRect rectViewComments;      //神评View
//*************
@property(nonatomic,assign)CGRect rectViewCommentsOne;    //神评1View
@property(nonatomic,assign)CGRect rectButtonHeadOne;
@property(nonatomic,assign)CGRect rectButtonNameOne;
@property(nonatomic,assign)CGRect rectButtonCommendOne;
@property(nonatomic,assign)CGRect rectLabCommendOne;
@property(nonatomic,assign)CGRect rectLabContentOne;
//***************
@property(nonatomic,assign)CGRect rectViewCommentsTwo;    // 神评2Veiw
@property(nonatomic,assign)CGRect rectButtonHeadTwo;
@property(nonatomic,assign)CGRect rectButtonNameTwo;
@property(nonatomic,assign)CGRect rectButtonCommendTwo;
@property(nonatomic,assign)CGRect rectLabCommendTwo;
@property(nonatomic,assign)CGRect rectLabContentTwo;


//*******************************************************************************************************


@property(nonatomic,assign)CGFloat cellHeight;


@end
