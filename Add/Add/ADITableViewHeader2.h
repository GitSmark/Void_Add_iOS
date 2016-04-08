//
//  ADITableViewHeader2.h
//  Add
//
//  Created by huangxy on 16/4/8.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ADIHeaderDelegate.h"

@interface ADITableViewHeader2 : UIView {

    id<ADIHeaderDelegate> delegate;

}

//接口变量delegate作为类的属性
@property(nonatomic,retain)id delegate;
@property (nonatomic, strong)UIImageView *Icon;
@property (nonatomic, strong)UIImageView *Code;
@property (nonatomic, strong)UILabel *Name;
@property (nonatomic, strong)UILabel *Syno;
@property (nonatomic, strong)UILabel *Lab1;
@property (nonatomic, strong)UILabel *Lab2;
@property (nonatomic, strong)UILabel *Lab3;
@property (nonatomic, strong)UILabel *Tag1;
@property (nonatomic, strong)UILabel *Tag2;
@property (nonatomic, strong)UILabel *Tag3;

@end
