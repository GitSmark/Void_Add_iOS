//
//  ADMNavigationController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADMNavigationController.h"

@interface ADMNavigationController ()

@end

@implementation ADMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController.navigationItem.backBarButtonItem
     setTitleTextAttributes:@{NSFontAttributeName : ADTextFont}
     forState:UIControlStateNormal];
    [viewController.view setBackgroundColor:[UIColor whiteColor]];
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
