//
//  XMTableViewController.h
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XMTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, assign) BOOL dataGrounp;

- (void)setXMPullRefresh;
- (void)XMPullRefresh;

@end
