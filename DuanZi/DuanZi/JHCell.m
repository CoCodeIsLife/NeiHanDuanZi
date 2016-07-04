//
//  JHCell.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/29.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "JHCell.h"
#import "UIColor+Hex.h"
@implementation JHCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.contentView.backgroundColor = [UIColor colorWithHexString:@"#eeeeee"];
        
        //主图
        UIImageView *imageViewBG = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, self.contentView.frame.size.width,160)];
        [self.contentView addSubview:imageViewBG];
        self.imageViewBG = imageViewBG;

        //时间背景图片
        UIImage *imageTime = [UIImage imageNamed:@"essence_label"];
        UIImageView *imageViewTime = [[UIImageView alloc]init];
        imageViewTime.frame = CGRectMake(0, 20, 47, 18);
        imageViewTime.image = imageTime;
        [self.contentView addSubview:imageViewTime];
        self.imageViewTime = imageViewTime;
        //时间
        UILabel *timeLabel = [[UILabel alloc]init];
        timeLabel.center = imageViewTime.center ;
        timeLabel.bounds = imageViewTime.bounds;
        timeLabel.font = [UIFont systemFontOfSize:10];
        timeLabel.textAlignment = NSTextAlignmentCenter;
        timeLabel.textColor = [UIColor whiteColor];
        [self.contentView addSubview:timeLabel];
        self.timeLabel = timeLabel;
        
        //内容
        UILabel *titleLab = [[UILabel alloc]initWithFrame:CGRectMake(15, 115, self.contentView.frame.size.width - 30, 45)];
        [self.contentView addSubview:titleLab];
        titleLab.numberOfLines = 2;
        titleLab.font = [UIFont systemFontOfSize:16];
        titleLab.textColor = [UIColor whiteColor];
        self.titleLabel = titleLab;
        
       

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
