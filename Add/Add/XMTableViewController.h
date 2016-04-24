//
//  XMTableViewController.h
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMTableObject.h"

@interface XMTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, assign) BOOL dataGrounp;
@property (nonatomic, copy) Class cellClass;

- (XMTableObject *)ModelForCellAtIndexPath:(NSIndexPath *)indexPath;
- (void)setXMPullRefresh;
- (void)XMPullRefresh;

@end
