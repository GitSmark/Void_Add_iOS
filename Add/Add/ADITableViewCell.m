//
//  ADITableViewCell.m
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewCell.h"

@implementation ADITableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.textLabel.textColor = [UIColor darkGrayColor];
        self.textLabel.font = [UIFont systemFontOfSize:15];
    }
    return self;
}

- (void)setModel:(NSObject *)model
{
    [super setModel:model];
    NSString *cellModel = (NSString *)model;
    self.textLabel.text = cellModel;
    //self.imageView.image= [UIImage imageNamed:@"mine_icon"];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

@end
