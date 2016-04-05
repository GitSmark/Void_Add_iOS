//
//  XMTableModel.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTableObject.h"

@implementation XMTableObject

+ (instancetype)initWithTableCellClass:(Class)cellClass XModel:(NSObject *)model
                   ViewControllerClass:(Class)viewcontrollClass
{
    XMTableModel *_XM = [[XMTableModel alloc] init];
    _XM.ViewControllerClass = viewcontrollClass;
    _XM.TableCellClass = cellClass;
    _XM.XModel = model;
    return _XM;
}

@end
