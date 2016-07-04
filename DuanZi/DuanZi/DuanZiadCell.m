//
//  DuanZiadCell.m
//  DuanZi
//
//  Created by liuyanqi on 16/7/2.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "DuanZiadCell.h"
#import "UIColor+Hex.h"
@implementation DuanZiadCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = NO;
        
        //头像
        _imageViewAdHead = [[UIImageView alloc]init];
        [self.contentView addSubview:_imageViewAdHead];
        
        //用户名
        _lableAdName = [[UILabel alloc]init];
        [self.contentView addSubview:_lableAdName];
        
        //文字内容
        _lableAdContent = [[UILabel alloc]init];
        _lableAdContent.numberOfLines = 0;
        [self.contentView addSubview:_lableAdContent];
        
        //图片
        _imageViewAd = [[UIImageView alloc]init];
        _imageViewAd.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_imageViewAd];
        
        //推广
        _labelSpread = [[UILabel alloc]init];
        _labelSpread.font = [UIFont systemFontOfSize:12];
        _labelSpread.textColor = [UIColor colorWithHexString:@"#666666"];
        [self.contentView addSubview:_labelSpread];
        
        //下载
        _labelDownLoad = [[UILabel alloc]init];
        _labelDownLoad.textColor = [UIColor whiteColor];
        _labelDownLoad.font = [UIFont systemFontOfSize:13];
        _labelDownLoad.backgroundColor = [UIColor colorWithHexString:@"f96fa6"];
        [self.contentView addSubview:_labelDownLoad];
        
        //灰条
        _viewAdColor = [[UIView alloc]init];
        _viewAdColor.backgroundColor = [UIColor colorWithHexString:@"#eeeeee"];
        [self.contentView addSubview:_viewAdColor];
        
    }
    
    return self;
}


-(void)setAdPc:(DuanZiadPC *)adPc
{
    _adPc = adPc;
    //头像
    _imageViewAdHead.frame = adPc.rectHead;
    
    //name
    _lableAdName.frame = adPc.rectName;
    
    //文本
    _lableAdContent.frame = adPc.rectContent;
    
//    //pIC
    _imageViewAd.frame = adPc.rectImageView;
    
    //推广
    _labelSpread.frame = adPc.rectSpread;
    
    //下载
    _labelDownLoad.frame = adPc.rectDownLoad;
    _labelDownLoad.layer.cornerRadius = 5;
    _labelDownLoad.clipsToBounds = YES;
    _labelDownLoad.textAlignment = NSTextAlignmentCenter;
    
    
    
    //灰条
    _viewAdColor.frame = adPc.rectViewColor;
    
     DuanZiAd *adModel = [DuanZiAd modelObjectWithDictionary:adPc.dictData[@"ad"]];
    
//    NSLog(@"celllllllllllllll%@",adModel.avatarName);
    
    
    
    //头像
    [_imageViewAdHead sd_setImageWithURL:[NSURL URLWithString:adModel.avatarUrl]];
    
    //名字
    _lableAdName.text = adModel.avatarName;
    
    //文本
    _lableAdContent.text = adModel.title;
    
    //图片
    [_imageViewAd sd_setImageWithURL:[NSURL URLWithString:adModel.displayImage]];
    
    //推广
    _labelSpread.text = adModel.label;
    
    //下载
    _labelDownLoad.text = @"立即下载";
    
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
