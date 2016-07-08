//
//  ViewDislikeReasen.m
//  DuanZi
//
//  Created by liuyanqi on 16/7/5.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#define WIDTH [[UIScreen mainScreen] bounds].size.width
#define HEIGHT [[UIScreen mainScreen] bounds].size.height
#import "ViewDislikeReasen.h"
#import "DuanZiDislikeReason.h"
#import "UIColor+Hex.h"
@implementation ViewDislikeReasen

-(id)initWithArray:(NSArray *)array
{
    self=[super init];
    
    if (self)
        
    {
        //完成这个控件的界面效果
        //1.设置alertview的大小
        
        self.frame=CGRectMake(0, 0, WIDTH, HEIGHT);
        //父视图的透明度不为1   子视图也会随父改变
        //2.半透明的灰色view
        UIView *grayView=[[UIView alloc]initWithFrame:self.frame];
        grayView.backgroundColor=[UIColor grayColor];
        grayView.alpha=0.4;
        [self addSubview:grayView];
        
        //3.白框
        UIView *whiteView=[[UIView alloc]init];
        whiteView.center = self.center;
        whiteView.backgroundColor=[UIColor whiteColor];
        whiteView.layer.cornerRadius=10;
        whiteView.clipsToBounds=YES;
        [self addSubview:whiteView];
        
        //4.标题
        UILabel *lableTitle=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 214, 40)];
        lableTitle.backgroundColor = [UIColor colorWithHexString:@"#ff819e"];
        lableTitle.text=@"选择不喜欢的理由";
        lableTitle.textColor = [UIColor whiteColor];
        lableTitle.textAlignment=NSTextAlignmentCenter;
        [whiteView addSubview:lableTitle];
        //创建原因列表
        NSInteger gap = 10;
        NSInteger labelH = 25;
        CGRect rectL;
        for (int i = 0; i< array.count; i++) {
//            NSLog(@"%@",arrayData);
            NSDictionary *dict =array[i];
//            NSLog(@"+==================+++====++++++++++++++%@",dict);
//            NSLog(@"%@",[dict valueForKey:@"title"]);

            //文本
            UILabel *labelReasen = [[UILabel alloc]initWithFrame:CGRectMake(20, 40 + 10 + i *(gap + labelH), 140, labelH)];
            labelReasen.font = [UIFont systemFontOfSize:15];
            labelReasen.textColor = [UIColor colorWithHexString:@"#747474"];
            [whiteView addSubview:labelReasen];
            labelReasen.text = [dict valueForKey:@"title"];

            //按钮
            UIButton *buttonReasen = [[UIButton alloc]initWithFrame:CGRectMake(170, labelReasen.center.y - 9, 18, 18)];
            [buttonReasen setBackgroundImage:[UIImage imageNamed:@"dislike_not-selected"] forState:UIControlStateNormal];
            buttonReasen.tag = 10100 + i;
            [whiteView addSubview:buttonReasen];
            rectL = labelReasen.frame;
            
            [buttonReasen addTarget:self action:@selector(selectClick:) forControlEvents:UIControlEventTouchUpInside];
            
            
        }
        
        NSLog(@"+++++++++++++++++%f",CGRectGetMaxY(rectL));
        
        //取消按钮
        UIButton *quXiaoBtn=[[UIButton alloc]init];
        quXiaoBtn.frame=CGRectMake(0, CGRectGetMaxY(rectL) + 10, 107, 40);
        [quXiaoBtn setTitle:@"取消" forState:UIControlStateNormal];
        [quXiaoBtn setTitleColor:[UIColor colorWithHexString:@"#999999"] forState:UIControlStateNormal];
        quXiaoBtn.tag=10001;
        [whiteView addSubview:quXiaoBtn];

        [quXiaoBtn addTarget:self action:@selector(quXiaoBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        //确定按钮
        UIButton *queDingBtn=[[UIButton alloc]init];
        queDingBtn.frame=CGRectMake(107, CGRectGetMaxY(rectL) + 10, 107, 40);
        [queDingBtn setTitle:@"确定" forState:UIControlStateNormal];
        [queDingBtn setTitleColor:[UIColor colorWithHexString:@"#ff819e"] forState:UIControlStateNormal];
        queDingBtn.tag=10002;
        [whiteView addSubview:queDingBtn];
        
        
        //隔断线
        
        UIView *viewLong = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(quXiaoBtn.frame), 214, 1)];
        viewLong.backgroundColor = [UIColor colorWithHexString:@"#e5e5e5"];
        [whiteView addSubview:viewLong];
        
        UIView *viewShort = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(quXiaoBtn.frame), CGRectGetMinY(quXiaoBtn.frame), 1, CGRectGetHeight(quXiaoBtn.frame))];
        viewShort.backgroundColor = [UIColor colorWithHexString:@"#e5e5e5"];
        [whiteView addSubview:viewShort];


//        [queDingBtn addTarget:self action:@selector(queDingBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        whiteView.bounds = CGRectMake(0, 0, 214, CGRectGetMaxY(queDingBtn.frame));
        
    }
    
    return self;
    
}
//取消按钮
-(void)quXiaoBtnClick:(UIButton *)sender
{
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];

}
//确定按钮
//-(void)queDingBtnClick:(UIButton *)sender
//{
//    [UIView animateWithDuration:0.3 animations:^{
//        self.alpha = 0;
//    } completion:^(BOOL finished) {
//        [self removeFromSuperview];
//    }];
//    
//}
//勾选框
-(void)selectClick:(UIButton *)sender
{
    sender.selected = !sender.selected;
    [sender setBackgroundImage:[UIImage imageNamed:@"dislike_selected"] forState:UIControlStateSelected];

}
//点击空白退出 提示框
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
    
}


@end
