//
//  MySizeFit.m
//  TSizeClass
//
//  Created by 李永强 on 14-9-26.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import "MySizeFit.h"

@implementation MySizeFit
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame] ;
    if (self) {
        CGFloat x =10 , y  = 10 ;
        _label1 = [[ UILabel alloc]initWithFrame:CGRectMake(x, y,  200, 30)];
        _label1.numberOfLines = 0;
        y += 40 ;
        _label2 = [[ UILabel alloc]initWithFrame:CGRectMake(x , y,  200, 30)];
        _label2.numberOfLines = 0;
        y += 40 ;
        _label3 = [[ UILabel alloc]initWithFrame:CGRectMake(x, y,  200, 30)];
        _label3.numberOfLines = 0;
        [self addSubview:_label1];
        [self addSubview:_label2];
        [self addSubview:_label3];
        NSLog(@"initWithFrame-------initWithFrame");


    }
    return  self  ;
}
- (void)layoutSubviews
{
    NSLog(@"layoutSubviews-------layoutSubviews");
    [self mySubViewTOfit];

}
-(void)sizeToFit
{
    [super sizeToFit];
     NSLog(@"sizeToFit-------sizeToFit");
}
-(void)mySubViewTOfit
{
    CGFloat y = 10;
    for ( UIView * view in  [self subviews]) {
        CGRect frame = view.frame ;
        CGFloat height = frame.size.height ;
        frame.origin.y = y ;
        [view setFrame:frame];
        y += height  + 10;
    }
    y += 10 ;
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, y)];

}



@end
