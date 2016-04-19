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

#import "XMTestViewController.h"
#import "ADWTableViewCell.h"
#import "XMTableObject.h"
#import "ADWTableModel.h"

#import "NSString+Md5.h"

@interface ADWViewController ()

@end

@implementation ADWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
    [self initData];
}

- (void)initView {
    
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action: nil];
//    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"BarButtonItem_add" highImage:@"BarButtonItem_add" target:self action:@selector(rightBarButtonItemClicked)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"BarButtonItem_add"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClicked)];
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Wall_bg"]];
    //backgroundImage.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-50);
    //[self.view backgroundImage];
    
    self.tableView.backgroundView = backgroundImage;
    
    backgroundImage.sd_layout
    .topEqualToView(self.view)
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .bottomSpaceToView(self.view, -50);
    
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshData)];
    header.lastUpdatedTimeLabel.hidden = YES;
    self.tableView.mj_header = header;
    
    MJRefreshBackNormalFooter *footer = [MJRefreshBackNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
    self.tableView.mj_footer = footer;
}

- (void)initData {
    
    ADWTableModel *model = [[ADWTableModel alloc] init];
    model.name = @"huangxy";
    model.text = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    model.time = @"2016-04-18";
    
    XMTableObject *obj = [XMTableObject initWithTableCellClass:[ADWTableViewCell class] XModel:model ViewControllerClass:nil];
    
    self.cellClass = [ADWTableViewCell class];
    self.dataArray = [[NSMutableArray alloc] initWithArray:@[obj, obj, obj, obj, obj, obj]];
}

- (void)requestData {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //manager.requestSerializer = [AFJSONRequestSerializer serializer];
    //manager.responseSerializer =[AFHTTPResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    //NSMutableDictionary *params = @{@"noteid":@"0", @"key":@""};
    //params[@"key"] = [@"selectallnote" md5];
    //params[@"noteid"] = @"0";
    
    NSString * URL = [[NSString alloc] initWithFormat:@"%@%@", ADWUrl, @"Api/SelectAllNote.php"];
    
    [manager POST:URL parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success = %@", responseObject);
        //NSString *result = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSMutableArray *array = [NSMutableArray array];
//        for (NSDictionary *dic in responseObject) {
//            Model *model = [Model mj_objectWithKeyValues:dic];
//            [array addObject:model];
//        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error = %@", error);
    }];
}

- (void)refreshData {
    [NSThread sleepForTimeInterval:3.0f];
    [self.tableView.mj_header endRefreshing];
}

- (void)loadMoreData {
    [NSThread sleepForTimeInterval:3.0f];
    [self.tableView.mj_footer endRefreshing];
}

- (void)rightBarButtonItemClicked {
    //ADWAViewController *walladdVc = [[ADWAViewController alloc] init];
    XMTestViewController *walladdVc = [[XMTestViewController alloc] init];
    walladdVc.title = @"表白";
    [self.navigationController pushViewController:walladdVc animated:YES];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    XMTableObject *object = [self.dataArray[indexPath.section] objectAtIndex:indexPath.row];
    //    UIViewController *Vc = [[object.ViewControllerClass alloc] init];
    //    [self.navigationController pushViewController:Vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self cellHeightForIndexPath:indexPath cellContentViewWidth:[UIScreen mainScreen].bounds.size.width];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
