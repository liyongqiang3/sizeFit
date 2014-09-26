//
//  MyTableViewController.m
//  TSizeClass
//
//  Created by 李永强 on 14-9-26.
//  Copyright (c) 2014年 tongbaotu. All rights reserved.
//

#import "MyTableViewController.h"
#import "TableViewCell.h"
@interface MyTableViewController ()
{
    NSArray * dataArray ;

}
@end

@implementation MyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.estimatedRowHeight = 80.0 ;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    dataArray = @[@"第一行代码设置了单元格的代码设置了单元格的代码设置了单元格的代码设置了单元格的代码设置了单元格的代码设置了单元格的代码设置了单元格的代码设置了单元格的预估行高s",@"就是现有的原型单元格的高度。第二行代码是改变UITableViewAutomaticDimension的rowHeight属性我们经常会根据label里面的文字的多少，来计算label的尺寸，例如做微博的cell的时候我们经常会根据label里面的文字的多少，来计算label的尺寸，例如做微博的cell的时候",@"并允许标签自动增长"];
    

}
-(void)viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [dataArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static  NSString * reuseIdentifier = @"TableViewCell";
    TableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
    }
    
    cell.titleLabel.text = [dataArray objectAtIndex:indexPath.row];
           NSLog(@"the label bounds : %@", NSStringFromCGRect(cell.frame));
    [cell.titleLabel sizeToFit];
       NSLog(@"the label bounds : %@", NSStringFromCGRect(cell.frame));
    [cell layoutSubviews];
    [cell sizeToFit];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return  100 ;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
