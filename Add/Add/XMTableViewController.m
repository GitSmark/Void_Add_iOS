//
//  XMTableViewController.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTableViewController.h"
#import "XMTableViewCell.h"
#import "XMTableObject.h"

@interface XMTableViewController ()

#define Identifier @"XMTableViewCell"

@end

@implementation XMTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    //self.clearsSelectionOnViewWillAppear = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    self.dataGrounp = NO;
    self.cellClass = nil;
}

- (void)setCellClass:(Class)cellClass {
    _cellClass = cellClass;
}

- (void)setDataGrounp:(BOOL)dataGrounp {
    _dataGrounp = dataGrounp;
}

- (void)setDataArray:(NSMutableArray *)dataArray {
    _dataArray = dataArray;
    [self.tableView reloadData];
    [self.tableView registerClass:[self.cellClass class] forCellReuseIdentifier:Identifier];
}

- (void)setXMPullRefresh {
    self.refreshControl = [[UIRefreshControl alloc] init];
    [self.refreshControl addTarget:self action:@selector(XMPullRefresh) forControlEvents:UIControlEventValueChanged];
}

- (void)XMPullRefresh {
//    [self.refreshControl endRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return (!self.dataGrounp) ? 1 : self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return (!self.dataGrounp) ? self.dataArray.count : [self.dataArray[section] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XMTableObject *object = nil;
    if (!self.dataGrounp) {
        object = self.dataArray[indexPath.row];
    } else {
        object = [self.dataArray[indexPath.section] objectAtIndex:indexPath.row];
    }
    XMTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    NSLog(@"cellclass = %@", cell);
    if (!cell) {
        cell = [[object.TableCellClass alloc] init];
    }
    cell.XMObject = object;
    return cell;
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
