//
//  XMTestCell.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTestCell.h"
#import "XMTestModel.h"

@implementation XMTestCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.textLabel.textColor = [UIColor darkGrayColor];
        self.textLabel.font = [UIFont systemFontOfSize:15];
    }
    return self;
}

- (void)setXMObject:(XMTableObject *)XMObject
{
    [super setXMObject:XMObject];
    XMTestModel *cellModel = (XMTestModel *)XMObject.XModel;
    self.textLabel.text = cellModel.title;
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

@end
