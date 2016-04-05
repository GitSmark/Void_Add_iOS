//
//  XMTestViewController.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTestViewController.h"
#import "XMTableObject.h"

@implementation XMTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)initData {
    
    self.dataGrounp = YES;
    //self.dataArray = [[NSMutableArray alloc] initWithArray:@[@[model1, model2, model3, model4],@[model5]]];
    [self setXMPullRefresh];
    
}

- (void)XMPullRefresh {
    [NSThread sleepForTimeInterval:3.0f];
    [self.refreshControl endRefreshing];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    XMTableObject *object = [self.dataArray[indexPath.section] objectAtIndex:indexPath.row];
    UIViewController *Vc = [[object.ViewControllerClass alloc] init];
    [self.navigationController pushViewController:Vc animated:YES];
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return [tableView fd_heightForCellWithIdentifier:@"identifer" cacheByIndexPath:indexPath configuration:^(id cell) {
//        // configurations
//    }];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
