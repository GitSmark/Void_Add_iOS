//
//  ADIViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADIViewController.h"
#import "ADITableViewCell.h"

@interface ADIViewController ()

@property(nonatomic, strong) NSMutableArray *MtArray;

@end

@implementation ADIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setData];
    
}

- (void)setData {
    self.sectionsNumber = 1;
    self.cellClass = [ADITableViewCell class];
    _MtArray = [[NSMutableArray alloc] initWithArray:@[@"11",@"222",@"3333"]];
    self.dataArray = self.MtArray;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"didSelectRowAtIndexPath:%@", [self.dataArray[indexPath.section] objectAtIndex:indexPath.row]);
    //self.sectionsNumber = 2;
    [_MtArray addObject:@[@"455464",@"45645"]];
    NSLog(@"count:%lu", self.MtArray.count);
    //self.dataArray = MtArray;
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
