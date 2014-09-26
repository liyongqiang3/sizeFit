//
//  TableViewCell.m
//  TSizeClass
//
//  Created by 李永强 on 14-9-26.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10 , 10, 200, 20)];
    _titleLabel.numberOfLines = 0 ;
//    _titleLabel.adjustsFontSizeToFitWidth = NO ;
    [self addSubview:_titleLabel];


    NSLog(@"sdhfdsjgk");

    

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
