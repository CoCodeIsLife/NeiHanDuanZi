//
//  ViewControllerFirstPage.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/28.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "ViewControllerFirstPage.h"
#import "UIColor+Hex.h"
#import "TableViewControllerZhiBo.h"
#import "TableViewControllerTuiJian.h"
#import "TableViewControllerShiPin.h"
#import "TableViewControllerPic.h"
#import "TableViewControllerDuanZi.h"
#import "TableViewControllerJingHua.h"
#import "TableViewControllerSameCity.h"
#import "TableViewControllerGame.h"
#import "ViewControllerDZWebView.h"
@interface ViewControllerFirstPage ()<UIScrollViewDelegate>
{
    NSArray *_arrayItem ;
    UIScrollView *_scrollViewNav;
    UIView *_ViewFocus;
    UIScrollView *_scrollViewContent;
    int _currentPage;
    NSArray *_arrayVC;
    
//    TableViewControllerJingHua *_VCJingHua;
    
    
}
@end

@implementation ViewControllerFirstPage

- (void)viewDidLoad {
    [super viewDidLoad];
    [self jieMianBuJu];
    self.automaticallyAdjustsScrollViewInsets =NO;
    self.navigationController.automaticallyAdjustsScrollViewInsets = NO;
    //注册通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(pushToWebViewDuanZi:) name:@"DuanZiCell" object:nil];
    

}
//头像图片缩放
- (UIImage *)scaleImage:(UIImage *)image toScale:(float)scaleSize
{
    UIGraphicsBeginImageContext(CGSizeMake(image.size.width * scaleSize, image.size.height * scaleSize));
   [image drawInRect:CGRectMake(0, 0, image.size.width * scaleSize, image.size.height * scaleSize)];
   UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
   UIGraphicsEndImageContext();
   return scaledImage;
}
//界面布局
-(void)jieMianBuJu
{
    //导航栏上的按钮
    UIImage *headImage = [UIImage imageNamed:@"defaulthead"];
    UIImage *newHeadImg = [self scaleImage:headImage toScale:70.0/120];
    
    UIBarButtonItem *buttonL = [[UIBarButtonItem alloc]initWithImage:[newHeadImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(headClick)];
    UIBarButtonItem *buttonR = [[UIBarButtonItem alloc]initWithImage:[[UIImage imageNamed:@"submission"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(editClick)];
    
    self.navigationItem.leftBarButtonItem =buttonL;
    self.navigationItem.rightBarButtonItem =buttonR;
    
    //分栏显示
    NSArray *segmentedArray = [[NSArray alloc]initWithObjects:@"精选",@"关注",nil];
    //初始化UISegmentedControl
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    segmentedControl.frame = CGRectMake(0, 0, 150,35);
    
    segmentedControl.selectedSegmentIndex = 0;//设置默认选择项索引
    segmentedControl.tintColor = [UIColor colorWithHexString:@"#dcd9cf"];
    //点击后是否恢复原样
    segmentedControl.momentary = NO;
    [self.navigationItem setTitleView:segmentedControl];
    [segmentedControl addTarget:self action:@selector(segmentedControlSelected:) forControlEvents:UIControlEventValueChanged];
    
    
    //可滑动的菜单栏
    _scrollViewNav = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width -50, 35)];
    [self.view addSubview:_scrollViewNav];
    _scrollViewNav.contentSize = CGSizeMake(480, 35);
    _scrollViewNav.showsHorizontalScrollIndicator = NO;
    _arrayItem=[[NSArray alloc]initWithObjects:@"直播",@"推荐",@"视频",@"图片",@"段子",@"精华",@"同城",@"游戏", nil];
    
    for (int i = 0; i < _arrayItem.count; i ++) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(60 * i, 0, 60, 35)];
        [button setTitle:[_arrayItem objectAtIndex:i ] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:15];
        [button setTitleColor:[UIColor colorWithHexString:@"#6a6a6a"] forState:UIControlStateNormal];
        button.tag = i+100;
        [button addTarget:self action:@selector(navButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        if (i == 0) {
            [button setTitleColor:[UIColor colorWithHexString:@"#ff91ab"] forState:UIControlStateNormal];
        }
        [_scrollViewNav addSubview:button];
    }
    
    //    ContentscrollView   显示内容
    _scrollViewContent = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 99, self.view.frame.size.width, self.view.frame.size.height - 64 - 49)];
    
    [self.view addSubview:_scrollViewContent];
    _scrollViewContent.contentSize = CGSizeMake(self.view.frame.size.width * _arrayItem.count, self.view.frame.size.height - 64 -49);
    _scrollViewContent.pagingEnabled = YES;
    _scrollViewContent.bounces = NO;
    _scrollViewContent.delegate = self;
    _scrollViewContent.showsHorizontalScrollIndicator = NO;
    
//    首页的界面们
    TableViewControllerZhiBo *_VCZhiBo = [[TableViewControllerZhiBo alloc]init];
    TableViewControllerTuiJian *_VCTuiJian = [[TableViewControllerTuiJian alloc]init];
    TableViewControllerShiPin *_VCShiPin = [[TableViewControllerShiPin alloc]init];
    TableViewControllerPic *_VCPic = [[TableViewControllerPic alloc]init];
    TableViewControllerDuanZi *_VCDuanZi = [[TableViewControllerDuanZi alloc]init];
    TableViewControllerJingHua *_VCJingHua = [[TableViewControllerJingHua alloc]init];
    TableViewControllerSameCity *_VCSameCity = [[TableViewControllerSameCity alloc]init];
    TableViewControllerGame *_VCGame = [[TableViewControllerGame alloc]init];
    
    _arrayVC = @[_VCZhiBo,_VCTuiJian,_VCShiPin,_VCPic,_VCDuanZi,_VCJingHua,_VCSameCity,_VCGame];
    
    
    for (int i = 0; i < _arrayItem.count; i++) {
        
        UIViewController *VC = [_arrayVC objectAtIndex:i];
        VC.view.frame = CGRectMake(_scrollViewContent.frame.size.width * i ,0,self.view.frame.size.width, _scrollViewContent.frame.size.height - 35);
        [_scrollViewContent addSubview:VC.view];
        
        }
    
    
    //添加    关注试图
    _ViewFocus = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64-49)];
    _ViewFocus.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_ViewFocus];
    _ViewFocus.hidden = YES;
    
    
}
//scrollViewcontent的协议方法
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    _currentPage = _scrollViewContent.contentOffset.x/self.view.frame.size.width;
    //颜色重置
    [self resetButtonTitleColor];
    UIButton *button = [_scrollViewNav viewWithTag:_currentPage+100];
    [button setTitleColor:[UIColor colorWithHexString:@"#ff91ab"] forState:UIControlStateNormal];
    if (_currentPage == _arrayItem.count - 1) {
        return;
    }
    UIButton *button2 = [_scrollViewNav viewWithTag:_currentPage+100 - 2];
    [_scrollViewNav setContentOffset:CGPointMake(button2.frame.origin.x , 0) animated:YES];
    
}
//导航条上的按钮点击事件
-(void)navButtonClick:(UIButton *)sender
{
    //scrollViewContent 的移动
    [self resetButtonTitleColor];
    
    [_scrollViewContent setContentOffset:CGPointMake((sender.tag - 100) * self.view.frame.size.width , 0) animated:YES];

    //按钮的移动
    UIButton *button = [_scrollViewNav viewWithTag:sender.tag];
    [button setTitleColor:[UIColor colorWithHexString:@"#ff91ab"] forState:UIControlStateNormal];
    UIButton *button2 = [_scrollViewNav viewWithTag:sender.tag - 2];
    if (sender.tag - 100 == _arrayItem.count - 1) {
        return ;
    }
    if (sender.tag - 100 > 2) {
        [_scrollViewNav setContentOffset:CGPointMake(button2.frame.origin.x , 0) animated:YES];
    }
    if (sender.tag - 100 <=2) {
        [_scrollViewNav setContentOffset:CGPointMake(0 , 0) animated:YES];
    }
    
}

//分栏显示点击事件
-(void)segmentedControlSelected:(id)sender
{
    UISegmentedControl* control = (UISegmentedControl*)sender;
    if (control.selectedSegmentIndex == 0) {
        _ViewFocus.hidden = YES;
    }
    else
    {
        _ViewFocus.hidden = NO;
    }
}
-(void)resetButtonTitleColor
{
    //遍历所有按钮  把颜色 重置
    for (int i = 0; i < _arrayItem.count ; i ++) {
        UIButton *button = [_scrollViewNav viewWithTag:i + 100];
        [button setTitleColor:[UIColor colorWithHexString:@"#6a6a6a"] forState:UIControlStateNormal];
    }

}
-(void)editClick
{
    NSLog(@"+++++++++");
}
-(void)headClick
{
    NSLog(@"+++++++++");
}
-(void)pushToWebViewDuanZi:(NSNotification *)notifit
{
    ViewControllerDZWebView *VCDuanZiWebView = [[ViewControllerDZWebView alloc]init];
    VCDuanZiWebView.urlStr = notifit.object;
    [self.navigationController pushViewController:VCDuanZiWebView animated:YES];
}


@end
