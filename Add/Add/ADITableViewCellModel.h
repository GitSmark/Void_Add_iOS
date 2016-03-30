//
//  ADITableViewCellModel.h
//  Add
//
//  Created by huangxy on 16/3/30.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADITableViewCellModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *iconImage;
@property (nonatomic, copy) Class ViewControllerClass;

+ (instancetype)modelWithTitle:(NSString *)title iconImageName:(NSString *)iconImage
    ViewControllerClass:(Class)ViewControllerClass;

@end
