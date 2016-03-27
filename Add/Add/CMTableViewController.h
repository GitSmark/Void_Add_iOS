//
//  CMTableViewController.h
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, assign) NSInteger sectionsNumber;
@property (nonatomic, copy) Class cellModelClass;
@property (nonatomic, copy) Class cellClass;

- (void)setPullRefresh;
- (void)pullRefresh;

@end
