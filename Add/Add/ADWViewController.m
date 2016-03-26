//
//  ADWViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADWViewController.h"
#import "UIBarButtonItem+ADImageButton.h"

@interface ADWViewController ()

@end

@implementation ADWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action: nil];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"BarButtonItem_add"] style:UIBarButtonItemStyleDone target:self action:nil];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"BarButtonItem_add" highImage:@"BarButtonItem_add" target:self action:@selector(rightBarButtonItemClicked)];
    
    
}

- (void)rightBarButtonItemClicked {
    NSLog(@"click");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
