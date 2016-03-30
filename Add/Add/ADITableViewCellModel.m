//
//  ADITableViewCellModel.m
//  Add
//
//  Created by huangxy on 16/3/30.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewCellModel.h"

@implementation ADITableViewCellModel

+ (instancetype)modelWithTitle:(NSString *)title iconImageName:(NSString *)iconImage
    ViewControllerClass:(Class)ViewControllerClass
{
    ADITableViewCellModel *model = [[ADITableViewCellModel alloc] init];
    model.title = title;
    model.iconImage = iconImage;
    model.ViewControllerClass = ViewControllerClass;
    return model;
}

@end
