//
//  ADITableViewCell.m
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewCell.h"
#import "ADITableViewCellModel.h"

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
    ADITableViewCellModel *cellModel = (ADITableViewCellModel *)model;
    self.textLabel.text = cellModel.title;
    self.imageView.image= [UIImage imageNamed:cellModel.iconImage];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

@end
