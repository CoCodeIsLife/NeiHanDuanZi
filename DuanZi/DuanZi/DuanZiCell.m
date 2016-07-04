
//
//  DuanZiCell.m
//  DuanZi
//
//  Created by liuyanqi on 16/6/30.
//  Copyright © 2016年 liuyanqi. All rights reserved.
//

#import "DuanZiCell.h"
#import "UIColor+Hex.h"
#import <UIButton+WebCache.h>
@implementation DuanZiCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = NO;
        
        
        //热门标签
        _imageViewHot = [[UIImageView alloc]init];
        [self.contentView addSubview:_imageViewHot];
        
        //头像图标
        _buttonHead = [[UIButton alloc]init];
        _buttonHead.layer.cornerRadius = 15;
        _buttonHead.clipsToBounds = YES;
        [self.contentView addSubview:_buttonHead];
        //        _buttonHead.backgroundColor = [UIColor redColor];
        
        
        
        //用户名label
        _buttonName = [[UIButton alloc]init];
        [_buttonName setTitleColor:[UIColor colorWithHexString:@"#7e7e7e"] forState:UIControlStateNormal];
        _buttonName.titleLabel.font = [UIFont systemFontOfSize:13];
        _buttonName.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.contentView addSubview:_buttonName];
        //        _buttonName.backgroundColor = [UIColor redColor];
        
        //关闭按钮
        _buttonClose = [[UIButton alloc]init];
        [_buttonClose setBackgroundImage:[UIImage imageNamed:@"dislike"] forState:UIControlStateNormal];
        [self.contentView addSubview:_buttonClose];
        
        //文本内容
        _labelContent = [[UILabel alloc]init];
        _labelContent.numberOfLines = 0;
        _labelContent.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_labelContent];
        //        _labelContent.backgroundColor = [UIColor greenColor];
        
        
        
        //类别标签
        _buttonCategory = [[UIButton alloc]init];
        _buttonCategory.layer.cornerRadius = 10;
        _buttonCategory.clipsToBounds = YES;
        _buttonCategory.titleLabel.font = [UIFont systemFontOfSize:12];
        _buttonCategory.layer.borderWidth = 1;
        _buttonCategory.layer.borderColor = ([UIColor colorWithHexString:@"#6c5649"].CGColor);
        [_buttonCategory setTitleColor:[UIColor colorWithHexString:@"#6c5649"] forState:UIControlStateNormal];
        [self.contentView addSubview:_buttonCategory];
        
        //        神评视图****************************************************************************************************************
        
        _viewComments = [[UIView alloc]init];
        _viewComments.backgroundColor = [UIColor colorWithHexString:@"#f8f8f8"];
//        _viewComments.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_viewComments];
        
        
        //神评    one     *************************************************
        _viewCommentsOne = [[UIView alloc]init];
        [_viewComments addSubview:_viewCommentsOne];
        
        //头像
        _buttonHeadOne = [[UIButton alloc]init];
        [_viewCommentsOne addSubview:_buttonHeadOne];
        _buttonHeadOne.backgroundColor = [UIColor redColor];
        _buttonHeadOne.layer.cornerRadius = 15;
        _buttonHeadOne.clipsToBounds = YES;
        
        //用户名
        _buttonNameOne = [[UIButton alloc]init];
        [_viewCommentsOne addSubview:_buttonNameOne];
        [_buttonNameOne setTitleColor:[UIColor colorWithHexString:@"#666666"] forState:UIControlStateNormal];
        _buttonNameOne.titleLabel.font = [UIFont systemFontOfSize:13];
        _buttonNameOne.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        
        //赞
        _buttonCommendOne = [[UIButton alloc]init];
        [_viewCommentsOne addSubview:_buttonCommendOne];
        [_buttonCommendOne setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
        //赞个数
        _labelCommendOne = [[UILabel alloc]init];
        [_viewCommentsOne addSubview:_labelCommendOne];
        _labelCommendOne.textColor = [UIColor colorWithHexString:@"#cccccc"];
        _labelCommendOne.font = [UIFont systemFontOfSize:10];
        
        //评论内容
        
        _labelContentOne = [[UILabel alloc]init];
        [_viewCommentsOne addSubview:_labelContentOne];
        _labelContentOne.font = [UIFont systemFontOfSize:15];
        _labelContentOne.textColor = [UIColor colorWithHexString:@"#707070"];
//        _labelContentOne.backgroundColor = [UIColor greenColor];
        _labelContentOne.numberOfLines = 0;
        
        
        
        //神评   two   *************************************************
        _viewCommentsTwo = [[UIView alloc]init];
        [_viewComments addSubview:_viewCommentsTwo];
        
        //头像
        _buttonHeadTwo = [[UIButton alloc]init];
        [_viewCommentsTwo addSubview:_buttonHeadTwo];
        _buttonHeadTwo.layer.cornerRadius = 15;
        _buttonHeadTwo.clipsToBounds = YES;
        
        
        //用户名
        _buttonNameTwo = [[UIButton alloc]init];
        [_viewCommentsTwo addSubview:_buttonNameTwo];
        [_buttonNameTwo setTitleColor:[UIColor colorWithHexString:@"#666666"] forState:UIControlStateNormal];
        _buttonNameTwo.titleLabel.font = [UIFont systemFontOfSize:13];
        _buttonNameTwo.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        
        //赞数
        _buttonCommendTwo = [[UIButton alloc]init];
        [_viewCommentsTwo addSubview:_buttonCommendTwo];
        [_buttonCommendTwo setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
        
        _labelCommendTwo = [[UILabel alloc]init];
        [_viewCommentsTwo addSubview:_labelCommendTwo];
        _labelCommendTwo.textColor = [UIColor colorWithHexString:@"#cccccc"];
        _labelCommendTwo.font = [UIFont systemFontOfSize:10];
        
        
        //评论内容
        _labelContentTwo = [[UILabel alloc]init];
        [_viewCommentsTwo addSubview:_labelContentTwo];
        _labelContentTwo.font = [UIFont systemFontOfSize:15];
        _labelContentTwo.textColor = [UIColor colorWithHexString:@"#707070"];
        _labelContentTwo.numberOfLines = 0;
//        _labelContentTwo.backgroundColor = [UIColor greenColor];
        
        //**************************************************************************************************************************************************
        
        
        //viewBig  容纳零碎控件
        
        _viewBig = [[UIView alloc]init];
        [self.contentView addSubview:_viewBig];
        //        _viewBig.backgroundColor = [UIColor yellowColor];
        
        
        //赞
        _buttonCommend = [[UIButton alloc]init];
//        [_buttonCommend setImage:[UIImage imageNamed:@"Praise_pop"] forState:UIControlStateNormal];
        [_viewBig addSubview:_buttonCommend];
       
        
        _labelCommend = [[UILabel alloc]init];
        _labelCommend.font = [UIFont systemFontOfSize:10];
//        _labelCommend.textColor = [UIColor colorWithHexString:@"#cccccc"];
        [_viewBig addSubview:_labelCommend];
        //        _labelCommend.backgroundColor = [UIColor redColor];
        
        //踩
        _buttonStep = [[UIButton alloc]init];
        [_viewBig addSubview:_buttonStep];
//        [_buttonStep setImage:[UIImage imageNamed:@"step_pop"] forState:UIControlStateNormal];
        
        _labelStep = [[UILabel alloc]init];
        _labelStep.font = [UIFont systemFontOfSize:10];
//        _labelStep.textColor = [UIColor colorWithHexString:@"#cccccc"];
        [_viewBig addSubview:_labelStep];
        
        
        //评论
        
        _buttonComment = [[UIButton alloc]init];
        [_viewBig addSubview:self.buttonComment];
        [_buttonComment setBackgroundImage:[UIImage imageNamed:@"commenticon_textpage"] forState:UIControlStateNormal];
        
        _labelComment = [[UILabel alloc]init];
        _labelComment.font = [UIFont systemFontOfSize:10];
        _labelComment.textColor = [UIColor colorWithHexString:@"#cccccc"];
        [_viewBig addSubview:_labelComment];
        
        
        //分享
        _buttonShare = [[UIButton alloc]init];
        [_viewBig addSubview:_buttonShare];
        [_buttonShare setBackgroundImage:[UIImage imageNamed:@"moreicon_textpage"] forState:UIControlStateNormal];
        
        _labelShare = [[UILabel alloc]init];
        _labelShare.font = [UIFont systemFontOfSize:10];
        _labelShare.textColor = [UIColor colorWithHexString:@"#cccccc"];
        [_viewBig addSubview:_labelShare];
        
        
        //颜色条
        _viewColor = [[UIView alloc]init];
        _viewColor.backgroundColor = [UIColor colorWithHexString:@"#eeeeee"];
        [_viewBig addSubview:_viewColor];
        
    }
    
    return self;
}

- (void)setPc:(DuanZiPC *)pc{
    _pc = pc;
    
    //赋值rect
    _buttonHead.frame = pc.rectHead;
    _buttonName.frame = pc.rectName;
    _imageViewHot.frame = pc.rectHotPic;
    _buttonClose.frame = pc.rectClose;
    _labelContent.frame = pc.rectContent;
    _buttonCategory.frame = pc.rectBtnCategory;
    _viewBig.frame = pc.rectViewBig;
    
    _buttonCommend.frame = pc.rectBtnCommend;
    _buttonComment.frame = pc.rectBtnComment;
    _buttonStep.frame = pc.rectBtnStep;
    _buttonShare.frame = pc.rectBtnShare;
    _labelCommend.frame = pc.rectLabCommand;
    _labelStep.frame = pc.rectLabStep;
    _labelComment.frame = pc.rectLabComment;
    _labelShare.frame = pc.rectLabShare;
    _viewColor.frame = pc.rectViewColor;
    
    //    **************************************************************************************************************************神评
    _viewComments.frame = pc.rectViewComments;
    //************************
    _viewCommentsOne.frame = pc.rectViewCommentsOne;
    _buttonHeadOne.frame = pc.rectButtonHeadOne;
    _buttonNameOne.frame = pc.rectButtonNameOne;
    _labelContentOne.frame = pc.rectLabContentOne;
    _labelCommendOne.frame = pc.rectLabCommendOne;
    _buttonCommendOne.frame = pc.rectButtonCommendOne;
    
    //************************************
    _viewCommentsTwo.frame = pc.rectViewCommentsTwo;
    _buttonHeadTwo.frame = pc.rectButtonHeadTwo;
    _buttonNameTwo.frame = pc.rectButtonNameTwo;
    _labelContentTwo.frame = pc.rectLabContentTwo;
    _labelCommendTwo.frame = pc.rectLabCommendTwo;
    _buttonCommendTwo.frame = pc.rectButtonCommendTwo;
    
    
    
    DuanZiGroup *group = [DuanZiGroup modelObjectWithDictionary:pc.dictData[@"group"]];
    
    
    //    NSLog(@"%@",group.categoryName);
    //    NSLog(@"%@",group.text);
    
    // *****************************************************************************************************************************************************************************
    //神评赋值
    
    NSArray *arrayComment =pc.dictData[@"comments"];
    NSDictionary *dictCommentOne;
    NSDictionary *dictCommentTwo;
    
    if (arrayComment.count==1) {
        
        dictCommentOne =  arrayComment[0];
        commentsOne = [DuanZiComments modelObjectWithDictionary:dictCommentOne];
        
        //判断当有神评的时候把神评View可见
        self.viewComments.hidden = NO;
        self.viewCommentsOne.hidden = NO;
        //只赋值神评1
        [self setCommentsOne];
    }
    if (arrayComment.count==2) {
        
        dictCommentOne =  arrayComment[0];
        commentsOne = [DuanZiComments modelObjectWithDictionary:dictCommentOne];
        
        dictCommentTwo =  arrayComment[1];
        commentsTwo = [DuanZiComments modelObjectWithDictionary:dictCommentTwo];
        
        //判断当有神评的时候把神评View可见
        self.viewComments.hidden = NO;
        self.viewCommentsOne.hidden = NO;
        self.viewCommentsTwo .hidden = NO;
        //神评1 神评2 赋值
        [self setCommentsOne];
        [self setCommentsTwo];
    }
    
    
    
    //  *********************************************************************************************************************
    //文字高度
    //用户名
    [_buttonName setTitle:group.user.name forState:UIControlStateNormal];
    
    //头像
    NSString *urlStr = group.user.avatarUrl;
    NSURL *url = [NSURL URLWithString:urlStr];
    
    [_buttonHead sd_setImageWithURL:url forState:UIControlStateNormal];
    
    //内容
    
    _labelContent.text = group.text;
    
    
    //热门标签
    
    if(group.hasHotComments == 1)
    {
        _imageViewHot.image = [UIImage imageNamed:@"hoticon_textpage"];
    }
    
    
    NSInteger diggCount = group.diggCount;
    NSInteger buryCount = group.buryCount;
    NSInteger commentCount = group.commentCount;
    NSInteger shareCount = group.shareCount;
    //赞
    _labelCommend.text = [NSString stringWithFormat:@"%ld",diggCount];
    
    //踩
    _labelStep.text = [NSString stringWithFormat:@"%ld",buryCount];
    
    //评论
    _labelComment.text = [NSString stringWithFormat:@"%ld",commentCount];
    
    //分享
    _labelShare.text = [NSString stringWithFormat:@"%ld",shareCount];
    
    if (diggCount>10000) {
        _labelCommend.text = [NSString stringWithFormat:@"%.1f万",diggCount/10000.0];
    }
    if (buryCount>10000) {
        _labelCommend.text = [NSString stringWithFormat:@"%.1f万",buryCount/10000.0];
    }
    if (commentCount>10000) {
        _labelCommend.text = [NSString stringWithFormat:@"%.1f万",commentCount/10000.0];
    }
    if (shareCount>10000) {
        _labelCommend.text = [NSString stringWithFormat:@"%.1f万",shareCount/10000.0];
    }
    
    //categroy  标签
    [_buttonCategory setTitle:group.categoryName forState:UIControlStateNormal];
    
    
}
//*******************               神评One赋值        *************
-(void)setCommentsOne
{
    
    //评论内容
    _labelContentOne.text = commentsOne.text;
    //    NSLog(@"comment ++====%@",commentsOne.text);
    
    //用户昵称
    [_buttonNameOne setTitle:commentsOne.userName forState:UIControlStateNormal];
    
    //头像
    
    [_buttonHeadOne sd_setImageWithURL:[NSURL URLWithString:commentsOne.avatarUrl] forState:UIControlStateNormal];
    
    //赞数
    _labelCommendOne.text = [NSString stringWithFormat:@"%.0f", commentsOne.diggCount];
    
}
//*******************               神评Two赋值        *************
-(void)setCommentsTwo
{
    //评论内容
    _labelContentTwo.text = commentsTwo.text;
//    NSLog(@"comment ++====%@",commentsTwo.text);
    
    //用户昵称
    [_buttonNameTwo setTitle:commentsTwo.userName forState:UIControlStateNormal];
    
    //头像
    
    [_buttonHeadTwo sd_setImageWithURL:[NSURL URLWithString:commentsTwo.avatarUrl] forState:UIControlStateNormal];
    
    //赞数
    _labelCommendTwo.text = [NSString stringWithFormat:@"%.0f", commentsTwo.diggCount];
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
