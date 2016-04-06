//
//  XMTableModel.h
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMTableObject : NSObject

@property (nonatomic, strong) NSObject *XModel;
@property (nonatomic, copy) Class TableCellClass;
@property (nonatomic, copy) Class ViewControllerClass;

+ (instancetype)initWithTableCellClass:(Class)cellClass XModel:(NSObject *)model
           ViewControllerClass:(Class)viewcontrollClass;

@end
