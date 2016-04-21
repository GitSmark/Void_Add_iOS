//
//  ADWTableViewCell.h
//  Add
//
//  Created by huangxy on 16/4/18.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMTableViewCell.h"
#import "XMTableObject.h"

@interface ADWTableViewCell : XMTableViewCell

@property (nonatomic, strong)XMTableObject *model;
@property (nonatomic, strong)UIImageView *head;
@property (nonatomic, strong)UILabel *name;
@property (nonatomic, strong)UILabel *text;
@property (nonatomic, strong)UILabel *time;

@end
