//
//  TableViewControllerJingHua.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/28.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "TableViewControllerJingHua.h"
#import <AFNetworking.h>
#import "JingHuaDataModels.h"
#import "JingHuaCell.h"
#import "JHCell.h"
#import <UIImageView+WebCache.h>
#import "UIColor+Hex.h"
#import <MJRefresh.h>

@interface TableViewControllerJingHua ()<UITableViewDataSource,UITableViewDelegate>
{
    JingHuaBaseClass *_model;
    JingHuaBaseClass *_modelLoad;
    NSString *_urlFirst;
    NSInteger loadTime;
    NSMutableArray *_data;

}
@end

@implementation TableViewControllerJingHua

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _urlFirst = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=0&callback=jsonp1&csrfmiddlewaretoken=undefined&_=1467180480353" ;
    [self requestDataWithUrl:_urlFirst];
    
    //下拉刷新
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    
    // Enter the refresh status immediately
    [self.tableView.mj_header beginRefreshing];
    
    //上啦加载
    self.tableView.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
    [self.tableView.mj_footer beginRefreshing];
    


}
-(void)loadNewData
{
    [self requestDataWithUrl:_urlFirst];

    
    [self.tableView.mj_header endRefreshing];
    
}
-(void)loadMoreData
{
    NSString *url2 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1467024952&callback=jsonp2&csrfmiddlewaretoken=undefined&_=1467210311441";
    NSString *url3 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1466833656&callback=jsonp3&csrfmiddlewaretoken=undefined&_=1467210313074";
    NSString *url4 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1466593905&callback=jsonp4&csrfmiddlewaretoken=undefined&_=1467210314207";
    NSString *url5 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1466413418&callback=jsonp5&csrfmiddlewaretoken=undefined&_=1467210315952";
    NSString *url6 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1466152815&callback=jsonp6&csrfmiddlewaretoken=undefined&_=1467210317229";
    NSString *url7 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1465898626&callback=jsonp7&csrfmiddlewaretoken=undefined&_=1467210318826";
    NSString *url8 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1465721532&callback=jsonp8&csrfmiddlewaretoken=undefined&_=1467210320045";
    NSString *url9 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1465384889&callback=jsonp9&csrfmiddlewaretoken=undefined&_=1467210321628";
    NSString *url10 = @"http://toutiao.com/ma/?media_id=5234320301&count=10&max_behot_time=1465210713&callback=jsonp10&csrfmiddlewaretoken=undefined&_=1467210324679";
    
    NSArray *arrayUrl = @[url2,url3,url4,url5,url6,url7,url8,url9,url10];
    
    if (loadTime >= 9) {
        return;
    }
    
    
    [self loadMoreDataWithUrl:[arrayUrl objectAtIndex:loadTime]];
    NSArray *arrayList = _modelLoad.data;
//    NSLog(@"%lu",(unsigned long)arrayList.count);
    for (NSDictionary *dict in arrayList) {
        [_data addObject:dict];
    }
    
    [self.tableView reloadData];

    [self.tableView.mj_footer endRefreshing];
    
    loadTime ++;
    
    


    
    
}
//刷新更多数据
-(void)loadMoreDataWithUrl:(NSString *)url
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSString *str =[[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding]; ;
        //过滤掉请求得到的数据中的首尾小括号
        NSString *strL = @"(";
        NSRange rangeL = [str rangeOfString:strL];
        
        NSString *strR = @")";
        NSRange rangeR =[str rangeOfString:strR];
        
        NSRange rangeJson ;
        rangeJson.location = rangeL.location + 1;
        rangeJson.length = rangeR.location - rangeL.location - 1;
        
        NSString *strJson = [str substringWithRange:rangeJson];

        
        NSData *jsonData = [strJson dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        
        _modelLoad = [JingHuaBaseClass modelObjectWithDictionary:dict];
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"精华获取json失败了");
    }];

    
}
//头一次加载数据
-(void)requestDataWithUrl:(NSString *)url
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSString *str =[[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding]; ;
        //过滤掉请求得到的数据中的首尾小括号
        NSString *strL = @"(";
        NSRange rangeL = [str rangeOfString:strL];
        
        NSString *strR = @")";
        NSRange rangeR =[str rangeOfString:strR];
        
        NSRange rangeJson ;
        rangeJson.location = rangeL.location + 1;
        rangeJson.length = rangeR.location - rangeL.location - 1;
        
        NSString *strJson = [str substringWithRange:rangeJson];
        
//        NSLog(@"+++++++++:::%@",strJson);
        
        NSData *jsonData = [strJson dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        
        _model = [JingHuaBaseClass modelObjectWithDictionary:dict];
        _data = [[NSMutableArray alloc]init];
        [_data setArray:_model.data];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"获取json失败了");
    }];
    //单元格的协议方法和请求数据同时进行  所以执行协议方法的时候数据还没请求出来,   因此要刷新tableVeiw
    [self.tableView reloadData];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _data.count;
}
-(CGFloat )tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 180;
    }
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    if (indexPath.row == 0) {
        
        static NSString *cellIdentifier1 = @"cell1";
         JHCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier1];
        if (cell == nil) {
            cell = [[JHCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier1];
        }
        //内容
        cell.titleLabel.text = [_data[0] title];
        
        //主图
        NSString *urlStr = [_data[0] middleImage ];
        [cell.imageViewBG sd_setImageWithURL:[NSURL URLWithString:urlStr]];
        
        //时间
        
        NSRange rangeM = {5,2};
        NSRange rangeD = {8,2};
        NSString *timeStr = [[_data[0] verifyDetail] passTime];
        NSString *strM = [timeStr substringWithRange:rangeM];
        NSString *strD = [timeStr substringWithRange:rangeD];
        NSInteger timeM = [strM intValue];
        NSInteger timeD = [strD intValue];
        NSString *time = [NSString stringWithFormat:@"%ld月%ld日",(long)timeM,(long)timeD];
        cell.timeLabel.text = time;
        return cell;
        
    }
    else
    {
        static NSString *cellIdentifier = @"cell";
        JingHuaCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell == nil) {
            cell = [[JingHuaCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        
        //图片
        NSString *urlStr = [[_data objectAtIndex:indexPath.row ] middleImage];
        NSURL *url = [NSURL URLWithString:urlStr];
        [cell.jingHuaImgView sd_setImageWithURL:url];
        //蚊子内容
        cell.JHContentLabel.text = [[_data objectAtIndex:indexPath.row ] title];
        cell.JHContentLabel.font = [UIFont systemFontOfSize:14];
        cell.JHContentLabel.numberOfLines = 2;
//        NSLog(@"-------%@",cell.JHContentLabel.text);
        //时间
        NSRange timeRange ;
        timeRange.location = 5;
        timeRange.length = 5;
        NSString *timeStr = [[[[_data objectAtIndex:indexPath.row ]verifyDetail] passTime]substringWithRange:timeRange];
        cell.timeLabel.text = timeStr;
        cell.timeLabel.font = [UIFont systemFontOfSize:7];
        cell.timeLabel.textColor = [UIColor colorWithHexString:@"#9d9d9d"];
        
        return cell;

    }
}

@end
