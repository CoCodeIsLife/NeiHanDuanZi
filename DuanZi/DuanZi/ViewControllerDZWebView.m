//
//  ViewControllerDZWebView.m
//  DuanZi
//
//  Created by liuyanqi on 16/7/7.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "ViewControllerDZWebView.h"

@interface ViewControllerDZWebView ()

@end

@implementation ViewControllerDZWebView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIWebView *webViewDZ = [[UIWebView alloc]initWithFrame:self.view.frame];
    
    [self.view addSubview:webViewDZ];
    
    NSURL *url = [NSURL URLWithString:self.urlStr];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [webViewDZ loadRequest:request];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
