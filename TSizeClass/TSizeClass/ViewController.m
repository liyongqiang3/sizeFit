//
//  ViewController.m
//  TSizeClass
//
//  Created by 李永强 on 14-9-26.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import "ViewController.h"
#import "MySizeFit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _sizeFitView  = [[MySizeFit alloc]initWithFrame:CGRectMake(20, 90, 300, 120)];
    _sizeFitView.backgroundColor = [UIColor grayColor];
    _sizeFitView.label1.text =  @"常规约束,写法非常冗长,但能实现所有的约束方式以及非常特殊的约束方式,代码如下";
    [_sizeFitView.label1 sizeToFit];
    _sizeFitView.label3.text = @"常规约束,常规约束,";
    _sizeFitView.label2.text = @"常规约束,常规约束,常规约束,常规约束,常规约束,常规约束,";
    [_sizeFitView.label2 sizeToFit];



    [self.view addSubview:_sizeFitView];
    [_sizeFitView mySubViewTOfit];
     NSLog(@"--addSubview2------");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated
{

}
- (IBAction)onClickButtonEvent:(id)sender {
    UIView * testview  = [[UIView alloc]initWithFrame:CGRectMake(10, 60, 200, 40)];
    testview.backgroundColor =  [UIColor blueColor];
    [_sizeFitView addSubview:testview];
}
@end
