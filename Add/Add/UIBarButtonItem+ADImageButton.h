//
//  UIBarButtonItem+UIBarButtonItem_ADImageButton.h
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ADImageButton)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
