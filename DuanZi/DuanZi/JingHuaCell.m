//
//  JingHuaCell.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/29.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "JingHuaCell.h"

@implementation JingHuaCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {

        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 7.5, 80, 65)];
        [self.contentView addSubview:imageView];
        self.jingHuaImgView = imageView;
        
        UILabel *labelContent = [[UILabel alloc]initWithFrame:CGRectMake(105, 10, self.contentView.frame.size.width - 120, 40)];
        [self.contentView addSubview:labelContent];
        self.JHContentLabel = labelContent;
        
        UILabel *labelTime = [[UILabel alloc]initWithFrame:CGRectMake(self.contentView.frame.size.width - 50, 60, 30, 15)];
        [self.contentView addSubview:labelTime];
        self.timeLabel = labelTime;
        
    }
    return self;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
