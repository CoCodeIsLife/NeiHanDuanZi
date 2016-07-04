//
//  DuanZiadCell.h
//  DuanZi
//
//  Created by liuyanqi on 16/7/2.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DuanZiadPC.h"
#import "DuanZiDataModels.h"
#import <UIImageView+WebCache.h>

@interface DuanZiadCell : UITableViewCell

@property(nonatomic,strong)DuanZiadPC *adPc;


@property(nonatomic,strong)UIImageView *imageViewAdHead;
@property(nonatomic,strong)UILabel *lableAdName;
@property(nonatomic,strong)UILabel *lableAdContent;
@property(nonatomic,strong)UIImageView *imageViewAd;
@property(nonatomic,strong)UILabel *labelSpread;
@property(nonatomic,strong)UILabel *labelDownLoad;
@property(nonatomic,strong)UIView *viewAdColor;     //灰条

@end
