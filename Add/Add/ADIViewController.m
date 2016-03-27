//
//  ADIViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADIViewController.h"
#import "ADITableViewHeader.h"
#import "ADITableViewCell.h"

@interface ADIViewController ()

@property(nonatomic, strong) NSMutableArray *MtArray;

@end

@implementation ADIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)initData {
    
    ADITableViewHeader *header = [[ADITableViewHeader alloc] init];
    header.Icon.image = [UIImage imageNamed:@"AppIcon"];
    self.tableView.tableHeaderView = header;
    
    self.sectionsNumber = 2;
    self.cellClass = [ADITableViewCell class];
    self.MtArray = [[NSMutableArray alloc] initWithArray:@[@[@"我的表白",@"我的话题",@"我的收藏",@"我的评论"],@[@"设置"]]];
    self.dataArray = self.MtArray;
    //[self setPullRefresh];
    
}

//- (void)pullRefresh {
//    [NSThread sleepForTimeInterval:3.0f];
//    [self.refreshControl endRefreshing];
//    self.sectionsNumber =1;
//    self.dataArray = [[NSMutableArray alloc] initWithArray:@[@"",@"",@""]];
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"didSelectRowAtIndexPath:%@", [self.dataArray[indexPath.section] objectAtIndex:indexPath.row]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return (section == self.dataArray.count - 1) ? 20 : 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
