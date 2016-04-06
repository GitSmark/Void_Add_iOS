//
//  XMTestViewController.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTestViewController.h"
#import "XMTableObject.h"
#import "XMTestModel2.h"
#import "XMTestModel.h"
#import "XMTestCell2.h"
#import "XMTestCell.h"

@implementation XMTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)initData {
    
    //self.dataGrounp = YES;
    
    XMTestModel *model1 = [[XMTestModel alloc] init];
    model1.title = @"123";
    XMTestModel2 *model2 = [[XMTestModel2 alloc] init];
    model2.text = @"text777";
    model2.title = @"title777";
    model2.iconImage = @"mine_item5";
    
    XMTableObject *obj1 = [XMTableObject initWithTableCellClass:[XMTestCell class] XModel:model1 ViewControllerClass:nil];
    XMTableObject *obj2 = [XMTableObject initWithTableCellClass:[XMTestCell2 class] XModel:model2 ViewControllerClass:nil];
    
    self.dataArray = [[NSMutableArray alloc] initWithArray:@[obj1, obj2, obj1, obj1]];
    //self.dataArray = [[NSMutableArray alloc] initWithArray:@[@[obj1, obj1, obj1, obj1],@[obj1]]];
    [self setXMPullRefresh];
    
}

- (void)XMPullRefresh {
    [NSThread sleepForTimeInterval:3.0f];
    [self.refreshControl endRefreshing];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    XMTableObject *object = [self.dataArray[indexPath.section] objectAtIndex:indexPath.row];
//    UIViewController *Vc = [[object.ViewControllerClass alloc] init];
//    [self.navigationController pushViewController:Vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return (section == self.dataArray.count - 1) ? 10 : 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return [tableView fd_heightForCellWithIdentifier:@"identifer" cacheByIndexPath:indexPath configuration:^(id cell) {
//        // configurations
//    }];
    return 200;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
