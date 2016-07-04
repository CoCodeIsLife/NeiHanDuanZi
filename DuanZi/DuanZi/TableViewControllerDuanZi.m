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
@interface TableViewControllerDuanZi ()
{
    
    DuanZiBaseClass *_model;

}
@end

@implementation TableViewControllerDuanZi

- (void)viewDidLoad {
    [super viewDidLoad];
    //取消单元格分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //初始化两个
    _arrayData = [[NSMutableArray alloc]init];
    _arrayDataAd = [[NSMutableArray alloc]init];
    
    
    
    //请求数据
    
    [self requestData];
    
}

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
        
        NSLog(@"count====%lu",(unsigned long)_arrayData.count);
        

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
    
    NSLog(@"type =====   %@",pc.dictData [@"type"]);
    
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

    NSInteger type =[pc.dictData[@"type"] integerValue];;
    //广告
    if (type == 5)
    {
        static NSString *cellIdentifierAd = @"cellAd";
        DuanZiadCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifierAd];
        if (cell == nil) {
            cell = [[DuanZiadCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifierAd];
        }
        
        cell.adPc = _arrayDataAd[indexPath.row];
        return cell;
    }
    
    //非广告
    static NSString *cellIdentifier = @"cell";
    DuanZiCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[DuanZiCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //初始化的时候把神评View默认隐藏
    cell.viewComments.hidden = YES;
    cell.viewCommentsOne.hidden = YES;
    cell.viewCommentsTwo.hidden = YES;

    cell.pc = _arrayData[indexPath.row];
    
    
    return cell;
}
//封装********************************************************************************************

@end
