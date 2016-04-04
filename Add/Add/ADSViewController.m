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

//@property(nonatomic, strong)UIScrollView *scrollView;

@end

@implementation ADSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}

- (void)initView {
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"BarButtonItem_add"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClicked)];
    
    [self initScrollerView];
    
}

- (void)initScrollerView {
    
    UIScrollView *scrollview = [[UIScrollView alloc] init];
    scrollview.showsHorizontalScrollIndicator = NO;
    scrollview.showsVerticalScrollIndicator = NO;
    scrollview.bounces = NO;
    self.view = scrollview;
    
    //NSArray *imageNames = @[@"banner1.png", @"banner2.png", @"banner3.png"];
    NSArray *imagesURLStrings = @[
                                  @"https://raw.githubusercontent.com/GitSmark/Void_Add_iOS/master/Add/Add/Assets.xcassets/Show/banner1.imageset/show_banner1.png",
                                  @"https://raw.githubusercontent.com/GitSmark/Void_Add_iOS/master/Add/Add/Assets.xcassets/Show/banner2.imageset/show_banner2.png",
                                  @"https://raw.githubusercontent.com/GitSmark/Void_Add_iOS/master/Add/Add/Assets.xcassets/Show/banner3.imageset/show_banner3.png"];
    
    NSArray *titles = @[@"什么是梦想？超越梦想一起飞！",
                        @"未来的你一定会感谢现在拼命的自己。",
                        @"不后悔，路是自己选择的，走过的，错过的"];
    
//    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 180) shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, 0, 0) delegate:self placeholderImage:[UIImage imageNamed:@"placeholder"]];
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView.currentPageDotColor = [UIColor whiteColor];
    cycleScrollView.imageURLStringsGroup = imagesURLStrings;
    cycleScrollView.autoScrollTimeInterval = 3.0;
    cycleScrollView.titlesGroup = titles;
    cycleScrollView.delegate = self;
    
    [self.view addSubview:cycleScrollView];
    cycleScrollView.sd_layout
    .topEqualToView(self.view)
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .heightIs(180);
    
    UIImageView *Image = [[UIImageView alloc] init];
    Image.backgroundColor = ADBColor;
    [self.view addSubview:Image];
    Image.sd_layout.topSpaceToView(cycleScrollView, 10).leftEqualToView(self.view).widthIs(200).heightIs(200);
    
    UIImageView *Image1 = [[UIImageView alloc] init];
    Image1.backgroundColor = ADPColor;
    [self.view addSubview:Image1];
    Image1.sd_layout.topSpaceToView(Image, 10).leftEqualToView(self.view).widthIs(200).heightIs(500);
    
    UIImageView *Image2 = [[UIImageView alloc] init];
    Image2.backgroundColor = ADGColor;
    [self.view addSubview:Image2];
    Image2.sd_layout.topSpaceToView(Image1, 10).leftEqualToView(self.view).widthIs(200).heightIs(200);
    
    [self.view setupAutoHeightWithBottomView:Image2 bottomMargin:10];
    
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
     //NSLog(@">>>>>> 滚动到第%ld张图", (long)index);
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
