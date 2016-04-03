//
//  ADSViewController.m
//  Add
//
//  Created by huangxy on 16/3/26.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADSViewController.h"
#import "ADSAViewController.h"
#import "UIBarButtonItem+ADImageButton.h"

@interface ADSViewController () <SDCycleScrollViewDelegate>

@end

@implementation ADSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"BarButtonItem_add"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClicked)];
    
    NSArray *imageNames = @[@"banner1.png", @"banner2.png", @"banner3.png"];
    
//    NSArray *imagesURLStrings = @[
//                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
//                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
//                                  @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
//                                  ];
    
//    NSArray *titles = @[@"什么是梦想？超越梦想一起飞！",
//                        @"未来的你一定会感谢现在拼命的自己。",
//                        @"不后悔，路是自己选择的，走过的，错过的"];
    NSLog(@"屏幕宽：%f", SCREEN_WIDTH);
    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 220) shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    //SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 180) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    //cycleScrollView.imageURLStringsGroup = imagesURLStrings;
    cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
//    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
//    cycleScrollView.titlesGroup = titles;
    cycleScrollView.currentPageDotColor = [UIColor whiteColor];
    cycleScrollView.autoScrollTimeInterval = 3.0;
    cycleScrollView.delegate = self;
    [self.view addSubview:cycleScrollView];
    
}

- (void)rightBarButtonItemClicked {
    ADSAViewController *showaddVc = [[ADSAViewController alloc] init];
    showaddVc.title = @"话题";
    [self.navigationController pushViewController:showaddVc animated:YES];
}

#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@">>>>>> 点击了第%ld张图片", (long)index);
}

 - (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index
{
     NSLog(@">>>>>> 滚动到第%ld张图", (long)index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
