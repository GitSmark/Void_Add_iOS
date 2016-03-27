//
//  ADWViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADWViewController.h"
#import "ADWAViewController.h"
#import "UIBarButtonItem+ADImageButton.h"

@interface ADWViewController ()

@end

@implementation ADWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action: nil];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"BarButtonItem_add" highImage:@"BarButtonItem_add" target:self action:@selector(rightBarButtonItemClicked)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"BarButtonItem_add"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClicked)];
    
    UIImage *bgImage = [UIImage imageNamed:@"Wall_bg"];
    UIImageView *bgImageView = [[UIImageView alloc] initWithImage:bgImage];
    bgImageView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-50);
    [self.view addSubview:bgImageView];
}

- (void)rightBarButtonItemClicked {
    ADWAViewController *walladdVc = [[ADWAViewController alloc] init];
    walladdVc.title = @"表白";
    [self.navigationController pushViewController:walladdVc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
