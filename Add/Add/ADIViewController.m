//
//  ADIViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADIViewController.h"
#import "ADITableViewHeader.h"
#import "ADITableViewCellModel.h"
#import "ADITableViewCell.h"
#import "ADIHeaderDelegate.h"

#import "ADHeadViewController.h"
#import "ADHeadViewController1.h"
#import "ADHeadViewController2.h"
#import "ADHeadViewController3.h"

#import "ADItemViewController1.h"
#import "ADItemViewController2.h"
#import "ADItemViewController3.h"
#import "ADItemViewController4.h"
#import "ADItemViewController5.h"

@interface ADIViewController () <ADIHeaderDelegate>

@property(nonatomic, strong) NSMutableArray *MtArray;
@property(nonatomic, strong) ADITableViewHeader *header;

@end

@implementation ADIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)initData {

//    self.header = [[ADITableViewHeader alloc] init];
//    self.header.Icon.image = [UIImage imageNamed:@"mine_icon"];
//    self.header.Code.image = [UIImage imageNamed:@"qc_code"];
//    self.header.Syno.text = @"qq_1029389638";
//    self.header.Name.text = @"黄锡炎Ly";
//    self.header.Lab1.text = @"62";
//    self.header.Lab2.text = @"38";
//    self.header.Lab3.text = @"2";
    
//    [self.header setDelegate:self];
    
    self.sectionsNumber = 2;
    self.cellClass = [ADITableViewCell class];
//    self.tableView.tableHeaderView = self.header;
    
    ADITableViewCellModel *model1 = [ADITableViewCellModel modelWithTitle:@"我的表白" iconImageName:@"mine_item1" ViewControllerClass:[ADItemViewController1 class]];
    ADITableViewCellModel *model2 = [ADITableViewCellModel modelWithTitle:@"我的话题" iconImageName:@"mine_item2" ViewControllerClass:[ADItemViewController2 class]];
    ADITableViewCellModel *model3 = [ADITableViewCellModel modelWithTitle:@"我的收藏" iconImageName:@"mine_item3" ViewControllerClass:[ADItemViewController3 class]];
    ADITableViewCellModel *model4 = [ADITableViewCellModel modelWithTitle:@"我的评论" iconImageName:@"mine_item4" ViewControllerClass:[ADItemViewController4 class]];
    ADITableViewCellModel *model5 = [ADITableViewCellModel modelWithTitle:@"设置" iconImageName:@"mine_item5" ViewControllerClass:[ADItemViewController5 class]];
    
    self.MtArray = [[NSMutableArray alloc] initWithArray:@[@[model1, model2, model3, model4],@[model5]]];
    self.dataArray = self.MtArray;
    //[self setPullRefresh];
    
}

//- (void)pullRefresh {
//    [NSThread sleepForTimeInterval:3.0f];
//    [self.refreshControl endRefreshing];
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSLog(@"didSelectRowAtIndexPath:%@", [self.dataArray[indexPath.section] objectAtIndex:indexPath.row]);
    ADITableViewCellModel *model = [self.dataArray[indexPath.section] objectAtIndex:indexPath.row];
    UIViewController *Vc = [[model.ViewControllerClass alloc] init];
    Vc.title = model.title;
    [self.navigationController pushViewController:Vc animated:YES];
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return [tableView fd_heightForCellWithIdentifier:@"identifer" cacheByIndexPath:indexPath configuration:^(id cell) {
//        // configurations
//    }];
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return (section == self.dataArray.count - 1) ? 10 : 0;
}

- (void)OnClick:(NSInteger)position{
    Class class;
    NSString *title = [[NSString alloc] init];
    switch (position) {
        case 0:
            title = @"资料";
            class = [ADHeadViewController class];
            break;
        case 1:
            title = self.header.Tag1.text;
            class = [ADHeadViewController1 class];
            break;
        case 2:
            title = self.header.Tag2.text;
            class = [ADHeadViewController2 class];
            break;
        case 3:
            title = self.header.Tag3.text;
            class = [ADHeadViewController3 class];
            break;
        default:
            return;
            break;
    }
    if (class != nil && class != NULL) {
        UIViewController *Vc = [[class alloc] init];
        Vc.title = [[NSString alloc] initWithFormat:@"%@%@", self.title, title];
        [self.navigationController pushViewController:Vc animated:YES];
    }
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
