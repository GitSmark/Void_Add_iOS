//
//  ViewController.m
//  Add
//
//  Created by huangxy on 16/3/25.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADMViewController.h"
#import "ADWViewController.h"
#import "ADSViewController.h"
#import "ADIViewController.h"
#import "ADMNavigationController.h"

@interface ADMViewController ()

@end

@implementation ADMViewController

//-(UIStatusBarStyle)preferredStatusBarStyle
//{
//    return UIStatusBarStyleLightContent;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setChildControllers];
}

- (void)setChildControllers
{

    [self addChildViewController:[[ADWViewController alloc] init] title:@"表白墙" image:@"MaintabBar_01" selectedImage:@"MaintabBar_11"];
    [self addChildViewController:[[ADSViewController alloc] init] title:@"话题秀" image:@"MaintabBar_02" selectedImage:@"MaintabBar_12"];
    [self addChildViewController:[[ADIViewController alloc] init] title:@"我的" image:@"MaintabBar_03" selectedImage:@"MaintabBar_13"];
    
}

- (void)addChildViewController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{

    childController.title = title;
    childController.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = ADGColor;
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = ADBColor;
    [childController.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    [self addChildViewController:[[ADMNavigationController alloc] initWithRootViewController:childController]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
