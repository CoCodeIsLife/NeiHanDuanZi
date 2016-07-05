//
//  TableViewControllerDuanZi.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/28.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "TableViewControllerDuanZi.h"
#import <AFNetworking.h>
#import "DuanZiDataModels.h"
#import "DuanZiCell.h"
#import <UIImageView+WebCache.h>
#import <UIButton+WebCache.h>
#import "DuanZiPC.h"
#import "DuanZiadCell.h"
#import "DuanZiadPC.h"
#import <MJRefresh.h>
#import "UIColor+Hex.h"
@interface TableViewControllerDuanZi ()
{
    
    DuanZiBaseClass *_model;
    DuanZiadCell *_adCell;
    DuanZiCell *_cell ;
    NSMutableArray *_arrayClickCommend;
    NSMutableArray *_arrayClickCommentCommend;

}
@end

@implementation TableViewControllerDuanZi

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"1%p",self.view);

    //取消单元格分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //初始化两个数组
    _arrayData = [[NSMutableArray alloc]init];
    _arrayDataAd = [[NSMutableArray alloc]init];
    //初始化数组 记录点赞的状态
    _arrayClickCommend = [[NSMutableArray alloc]init];
    
    //初始化数组 记录神评点赞的状态
    _arrayClickCommentCommend = [[NSMutableArray alloc]init];

    //请求数据
    
    [self requestData];
    
}
//请求数据
-(void)requestData
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:@"http://ic.snssdk.com/neihan/stream/mix/v1/?content_type=-102&iid=4685042540&os_version=10.0&os_api=18&app_name=joke_essay&channel=App%20Store&device_platform=iphone&idfa=00000000-0000-0000-0000-000000000000&live_sdk_version=120&vid=E487C7F6-66AC-40D4-A162-5A6533C8D26D&openudid=8085611edbc21201b3a3f4e7773aec76226ef213&device_type=iPhone8,4&version_code=5.3.0&ac=WIFI&screen_width=640&device_id=20047815025&aid=7&city=%E6%B2%B3%E5%8D%97%E7%9C%81&content_type=-102&count=30&essence=1&latitude=34.70918977610658&longitude=113.7607375587819&message_cursor=0&min_time=1467205882&mpic=1" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        _model = [DuanZiBaseClass modelObjectWithDictionary:responseObject];
        
        for (NSDictionary *dict in _model.data.data) {
            
            DuanZiPC *pc = [[DuanZiPC alloc]init];
            DuanZiadPC *adPc = [[DuanZiadPC alloc]init];
            
            pc.dictData = dict;
            
            adPc.dictData = dict;
            [_arrayDataAd addObject:adPc];
            [_arrayData addObject:pc];
        }
        
//        NSLog(@"count====%lu",(unsigned long)_arrayData.count);
        
        //给状态数组赋值    0   没点过
        for (int i = 0; i< _arrayData.count; i++) {
            [_arrayClickCommend addObject:@"0"];
            [_arrayClickCommentCommend addObject:@"0"];
        }
        
        //单元格的协议方法和请求数据同时进行  所以执行协议方法的时候数据还没请求出来,   因此要刷新tableVeiw
        [self.tableView reloadData];
        NSLog(@"段子获取数据成功");

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"段子获取json失败了");
    }];

}

//单元格高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DuanZiPC *pc = _arrayData[indexPath.row];
    DuanZiadPC *adPc = _arrayDataAd[indexPath.row];
    
//    NSLog(@"type =====   %@",pc.dictData [@"type"]);
    
    NSInteger type =[pc.dictData[@"type"] integerValue];;
   
    if (type == 5) {
        return adPc.cellHeight;
    }

    return pc.cellHeight;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _arrayData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DuanZiPC *pc = _arrayData[indexPath.row];
    
    NSDictionary *dictData = pc.dictData;
    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
    //判断神评是否存在
    DuanZiComments *commentsOne;
    DuanZiComments *commentsTwo;
    NSArray *arrayComments = dictData[@"comments"];
    if (arrayComments.count == 1) {
        commentsOne = [DuanZiComments modelObjectWithDictionary:arrayComments[0]];
    }
    if (arrayComments.count == 2) {
        commentsTwo = [DuanZiComments modelObjectWithDictionary:arrayComments[1]];
    }
    

    NSInteger type =[dictData[@"type"] integerValue];

    //广告
    if (type == 5)
    {
        static NSString *cellIdentifierAd = @"cellAd";
        _adCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierAd];
        if (_adCell == nil) {
            _adCell = [[DuanZiadCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifierAd];
        }
        
        _adCell.adPc = _arrayDataAd[indexPath.row];
        return _adCell;
    }
    
    //非广告
    static NSString *cellIdentifier = @"cell";
    _cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (_cell == nil) {
        _cell = [[DuanZiCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //初始化的时候把神评View默认隐藏
    _cell.viewComments.hidden = YES;
    _cell.viewCommentsOne.hidden = YES;
    _cell.viewCommentsTwo.hidden = YES;
    
    //数据
    _cell.pc = _arrayData[indexPath.row];
    
    
    /*
     **************把   **赞**踩**   的颜色恢复默认
     */
    [_cell.buttonCommend setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
    _cell.labelCommend.textColor = [UIColor colorWithHexString:@"#cccccc"];
    
    [_cell.buttonStep setImage:[UIImage imageNamed:@"step_pop"] forState:UIControlStateNormal];
    _cell.labelStep.textColor = [UIColor colorWithHexString:@"#cccccc"];
    
    //判断是否被点过赞
    NSString *strCommend = _arrayClickCommend[indexPath.row];
    //被赞过
    if ([strCommend isEqualToString:@"1"]) {
        
        [_cell.buttonCommend setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommend.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCount = group.diggCount;
        // + 1
        NSInteger commendCount = digCount + 1;
        _cell.labelCommend.text = [NSString stringWithFormat:@"%ld",commendCount];
        if (commendCount>10000) {
            _cell.labelCommend.text = [NSString stringWithFormat:@"%.1f万",commendCount/10000.0];
        }

    }
    //被踩过
    if ([strCommend isEqualToString:@"2"]) {
        
        [_cell.buttonCommend setImage:[UIImage imageNamed:@"digdownicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommend.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCount = group.diggCount;
        // + 1
        NSInteger commendCount = digCount + 1;
        _cell.labelCommend.text = [NSString stringWithFormat:@"%ld",commendCount];
        if (commendCount>10000) {
            _cell.labelCommend.text = [NSString stringWithFormat:@"%.1f万",commendCount/10000.0];
        }
        
    }

    
    /*
     ****************   把神评的赞颜色恢复默认
     */
    
    [_cell.buttonCommendOne setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
    _cell.labelCommendOne.textColor = [UIColor colorWithHexString:@"#cccccc"];
    
    [_cell.buttonCommendTwo setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
    _cell.labelCommendTwo.textColor = [UIColor colorWithHexString:@"#cccccc"];

    
    //神评One赞过
    if ([_arrayClickCommentCommend[indexPath.row] isEqualToString:@"1"]) {
        
        [_cell.buttonCommendOne setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommendOne.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCountOne = commentsOne.diggCount;
        // + 1
        NSInteger commendCountOne = digCountOne + 1;
        _cell.labelCommendOne.text = [NSString stringWithFormat:@"%ld",commendCountOne];
        
    }
    //神评Two赞过
    if ([_arrayClickCommentCommend[indexPath.row] isEqualToString:@"2"]) {
        
        [_cell.buttonCommendTwo setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommendTwo.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCountTwo = commentsTwo.diggCount;
        // + 1
        NSInteger commendCountTwo = digCountTwo + 1;
        _cell.labelCommend.text = [NSString stringWithFormat:@"%ld",commendCountTwo];

    }
    //如果        两条        神评都被赞过
    if ([_arrayClickCommentCommend[indexPath.row] isEqualToString:@"3"]) {
        //*****************    神评One
        [_cell.buttonCommendOne setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommendOne.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCountOne = commentsOne.diggCount;
        // + 1
        NSInteger commendCountOne = digCountOne + 1;
        _cell.labelCommendOne.text = [NSString stringWithFormat:@"%ld",commendCountOne];
        
        
        //**********************神评Two
        [_cell.buttonCommendTwo setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
        
        _cell.labelCommendTwo.textColor = [UIColor colorWithHexString:@"#ff819f"];
        
        //赞数     被点过赞的再次 加载单元格 赞数 还是 + 1 的
        NSInteger digCountTwo = commentsTwo.diggCount;
        // + 1
        NSInteger commendCountTwo = digCountTwo + 1;
        _cell.labelCommend.text = [NSString stringWithFormat:@"%ld",commendCountTwo];
        
    }

   
    
  /*
   
   单元格上的button的点击事件
   
   */
    
    //赞
    _cell.buttonCommend.tag = indexPath.row;
    _cell.labelCommend.tag = indexPath.row + 10;
    _cell.viewBig.tag = indexPath.row + 20;
    [_cell.buttonCommend addTarget:self action:@selector(commendClick:) forControlEvents:UIControlEventTouchUpInside];
    

    //踩
    _cell.buttonStep.tag = indexPath.row + 30;
    _cell.labelStep.tag = indexPath.row + 40;
    [_cell.buttonStep addTarget:self action:@selector(stepClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //神评One  点赞
    _cell.buttonCommendOne.tag = indexPath.row + 50;
    _cell.labelCommendOne.tag = indexPath.row +60;
    _cell.viewCommentsOne.tag = indexPath.row + 70;
    [_cell.buttonCommendOne addTarget:self action:@selector(commentCommendOneClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //神评Two  点赞
    _cell.buttonCommendTwo.tag = indexPath.row + 80;
    _cell.labelCommendTwo.tag = indexPath.row + 90;
    _cell.viewCommentsTwo.tag = indexPath.row + 100;
    [_cell.buttonCommendTwo addTarget:self action:@selector(commentCommendTwoClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //评论
    
    [_cell.buttonComment addTarget:self action:@selector(commentClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //分享
    
    [_cell.buttonShare addTarget:self action:@selector(shareClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    return _cell;
}
//*********************************       赞评踩转         ********************
//点赞
-(void)commendClick:(UIButton *)sender
{
    //获得数据源
    
//    NSLog(@"%f",self.view.center.x);
//    NSLog(@"2%p",self.view);

    NSDictionary *dictData = [_arrayData [sender.tag] dictData];
    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
    
    //如果被赞过了   就弹出提示框  赞过了   //0 ,1 赞过 ,2 踩过
    if (![_arrayClickCommend[sender.tag] isEqualToString:@"0"]) {
        //弹出动画
        [self alertShowWithTag:sender.tag];
        
        return;
    }
    //改变  arrayCommend数组 的值
    _arrayClickCommend[sender.tag] = @"1";
    
    
    [sender setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
    UILabel *labelCommend = [self.view viewWithTag:sender.tag + 10];
    labelCommend.textColor = [UIColor colorWithHexString:@"#ff819f"];
    UIView *viewBig = [self.view viewWithTag:sender.tag + 20];
    
//    获取赞数
    NSInteger digCount = group.diggCount;
    // + 1
    NSInteger commendCount = digCount + 1;
    
    labelCommend.text = [NSString stringWithFormat:@"%ld",commendCount];
    if (commendCount>10000) {
        labelCommend.text = [NSString stringWithFormat:@"%.1f万",commendCount/10000.0];
    }
    
    // 点赞 +1 的动画
    UIImageView *ImgViewAddOne = [[UIImageView alloc]initWithFrame:CGRectMake(labelCommend.frame.origin.x - 5, labelCommend.frame.origin.y - 10, 14, 10)];
    ImgViewAddOne.image = [UIImage imageNamed:@"add_one"];
    [viewBig addSubview: ImgViewAddOne];
    
    [UIView animateWithDuration:1 animations:^{
        //+1 图片的动画
        ImgViewAddOne.transform = CGAffineTransformMakeScale(1.5, 1.5);
    
    } completion:^(BOOL finished) {
        [ImgViewAddOne removeFromSuperview];
        
    }];
    [UIView animateWithDuration:0.5 animations:^{
        //大拇指的动画
        sender.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        sender.transform = CGAffineTransformMakeScale(1, 1);
        
    }];

}

//踩的点击事件
-(void)stepClick:(UIButton *)sender
{
    //获得数据源
    
    NSDictionary *dictData = [_arrayData [sender.tag - 30] dictData];
    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
    
    //如果被赞或者被踩过了   就弹出提示框  赞/踩过了
    if (![_arrayClickCommend[sender.tag - 30] isEqualToString:@"0"]) {
        //弹出动画
        [self alertShowWithTag:sender.tag - 30];
        return;
    }
    
    //arrayCommend数组 的值
    _arrayClickCommend[sender.tag - 30] = @"2";
    
    [sender setImage:[UIImage imageNamed:@"digdownicon_textpage_press"] forState:UIControlStateNormal];
    UILabel *labelBury = [self.view viewWithTag:sender.tag + 10];
    labelBury.textColor = [UIColor colorWithHexString:@"#ff819f"];
    UIView *viewBig = [self.view viewWithTag:sender.tag - 10];
    
    //    获取踩数
    NSInteger buryCount = group.buryCount;
    // + 1
    NSInteger buryJia = buryCount + 1;
    
    labelBury.text = [NSString stringWithFormat:@"%ld",buryJia];
    if (buryJia>10000) {
        labelBury.text = [NSString stringWithFormat:@"%.1f万",buryJia/10000.0];
    }
    
    // 点赞 +1 的动画
    UIImageView *ImgViewAddOne = [[UIImageView alloc]initWithFrame:CGRectMake(labelBury.frame.origin.x - 5, labelBury.frame.origin.y - 10, 14, 10)];
    ImgViewAddOne.image = [UIImage imageNamed:@"add_one"];
    [viewBig addSubview: ImgViewAddOne];
    
    [UIView animateWithDuration:1 animations:^{
        //+1 图片的动画
        ImgViewAddOne.transform = CGAffineTransformMakeScale(1.5, 1.5);
        
    } completion:^(BOOL finished) {
        [ImgViewAddOne removeFromSuperview];
        
    }];
    [UIView animateWithDuration:0.5 animations:^{
        //大拇指的动画
        sender.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        sender.transform = CGAffineTransformMakeScale(1, 1);
        
    }];
    

}
//神评one 赞
-(void)commentCommendOneClick:(UIButton *)sender
{
    //获得数据源
    NSDictionary *dictData = [_arrayData [sender.tag - 50] dictData];
//    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
    
    //如果被赞过了   就弹出提示框  赞过了   //0 ,1 赞过 ,2 赞过  3  都赞过
    if (![_arrayClickCommentCommend[sender.tag-50] isEqualToString:@"0"]) {
        //弹出动画
        [self alertShowWithTag:sender.tag - 50];
        
        return;
    }
    //改变  arrayCommend数组 的值
    _arrayClickCommentCommend[sender.tag - 50] = @"1";
    
    
    [sender setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
    UILabel *labelCommend = [self.view viewWithTag:sender.tag + 10];
    labelCommend.textColor = [UIColor colorWithHexString:@"#ff819f"];
    UIView *viewcommentOne = [self.view viewWithTag:sender.tag + 20];
    
    DuanZiComments *commentsOne = [DuanZiComments modelObjectWithDictionary:dictData[@"comments"][0]];
    
    
    //    获取赞数
    NSInteger digCount = commentsOne.diggCount;
    NSLog(@"--------------------%ld",(long)digCount);
    // + 1
    NSInteger commendCount = digCount + 1;
    
    labelCommend.text = [NSString stringWithFormat:@"%ld",commendCount];
        
    // 点赞 +1 的动画
    UIImageView *ImgViewAddOne = [[UIImageView alloc]initWithFrame:CGRectMake(labelCommend.frame.origin.x - 5, labelCommend.frame.origin.y - 10, 14, 10)];
    ImgViewAddOne.image = [UIImage imageNamed:@"add_one"];
    [viewcommentOne addSubview: ImgViewAddOne];
    
    [UIView animateWithDuration:1 animations:^{
        //+1 图片的动画
        ImgViewAddOne.transform = CGAffineTransformMakeScale(1.5, 1.5);
        
    } completion:^(BOOL finished) {
        [ImgViewAddOne removeFromSuperview];
        
    }];
    [UIView animateWithDuration:0.5 animations:^{
        //大拇指的动画
        sender.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        sender.transform = CGAffineTransformMakeScale(1, 1);
        
    }];
    

}
//神评Two赞
-(void)commentCommendTwoClick:(UIButton *)sender
{
    //获得数据源
    NSDictionary *dictData = [_arrayData [sender.tag - 80] dictData];
    //    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:dictData[@"group"]];
    
    //如果被赞过了   就弹出提示框  赞过了   //0 ,1 赞过 ,2 赞过  3  都赞过
    if ([_arrayClickCommentCommend[sender.tag-80] isEqualToString:@"2"]||[_arrayClickCommentCommend[sender.tag-80] isEqualToString:@"3"]) {
        //弹出动画
        [self alertShowWithTag:sender.tag - 50];
        
        return;
    }
    //改变  arraycommentCommend数组 的值
    
    if ([_arrayClickCommentCommend[sender.tag-80] isEqualToString:@"1"] ) {
        _arrayClickCommentCommend[sender.tag - 80] = @"3";
    }
    else{
        [_arrayClickCommentCommend[sender.tag-80] isEqualToString:@"2"];
    }
    
    [sender setImage:[UIImage imageNamed:@"digupicon_textpage_press"] forState:UIControlStateNormal];
    UILabel *labelCommend = [self.view viewWithTag:sender.tag + 10];
    labelCommend.textColor = [UIColor colorWithHexString:@"#ff819f"];
    UIView *viewcommentOne = [self.view viewWithTag:sender.tag + 20];
    
    DuanZiComments *commentsOne = [DuanZiComments modelObjectWithDictionary:dictData[@"comments"][0]];
    
    
    //    获取赞数
    NSInteger digCount = commentsOne.diggCount;
    NSLog(@"--------------------%ld",(long)digCount);
    // + 1
    NSInteger commendCount = digCount + 1;
    
    labelCommend.text = [NSString stringWithFormat:@"%ld",commendCount];
    
    // 点赞 +1 的动画
    UIImageView *ImgViewAddOne = [[UIImageView alloc]initWithFrame:CGRectMake(labelCommend.frame.origin.x - 5, labelCommend.frame.origin.y - 10, 14, 10)];
    ImgViewAddOne.image = [UIImage imageNamed:@"add_one"];
    [viewcommentOne addSubview: ImgViewAddOne];
    
    [UIView animateWithDuration:1 animations:^{
        //+1 图片的动画
        ImgViewAddOne.transform = CGAffineTransformMakeScale(1.5, 1.5);
        
    } completion:^(BOOL finished) {
        [ImgViewAddOne removeFromSuperview];
        
    }];
    [UIView animateWithDuration:0.5 animations:^{
        //大拇指的动画
        sender.transform = CGAffineTransformMakeScale(1.5, 1.5);
    } completion:^(BOOL finished) {
        sender.transform = CGAffineTransformMakeScale(1, 1);
        
    }];
    
    

}

-(void)commentClick:(UIButton *)sender
{
    
}

-(void)shareClick:(UIButton *)sender
{
    
}
//重复点击赞踩按钮时候动画效果
-(void)alertShowWithTag:(NSInteger)tag
{
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIView *viewDigged = [[UIView alloc]init];
    viewDigged.center = window.center;
    viewDigged.bounds = CGRectMake(0, 0, 100, 80);
    viewDigged.alpha = 0.3;
    viewDigged.backgroundColor = [UIColor blackColor];
    [window addSubview:viewDigged];
    viewDigged.layer.cornerRadius = 5;
    viewDigged.clipsToBounds = YES;
    
    
    UILabel *lableDigged = [[UILabel alloc]init];
    lableDigged.center = window.center;
    lableDigged.bounds = CGRectMake(0, 0, 80, 30);
    [window addSubview:lableDigged];
    lableDigged.textColor = [UIColor whiteColor];
    lableDigged.alpha = 0.5;
    
    lableDigged.text = @"您已踩过";
    if ([_arrayClickCommend[tag]isEqualToString:@"1"]) {
        lableDigged.text = @"您已顶过";
    }
    
    //弹出提示框的动画
    [UIView animateWithDuration:1 animations:^{
        viewDigged.alpha = 0.7;
        lableDigged.alpha = 1;
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1 animations:^{
            viewDigged.alpha = 0;
            lableDigged.alpha = 0;
        }completion:^(BOOL finished){
            [viewDigged removeFromSuperview];
            [lableDigged removeFromSuperview];
            
        }];
    }];

}




@end



