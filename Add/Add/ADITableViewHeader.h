//
//  ADITableViewHeader.h
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ADIHeaderDelegate.h"

@interface ADITableViewHeader : UIView  {
    
    id<ADIHeaderDelegate> delegate;
    
}

//接口变量delegate作为类的属性
@property(nonatomic,retain)id delegate;
@property (nonatomic, weak)UIImageView *Icon;
@property (nonatomic, weak)UIImageView *Code;
@property (nonatomic, weak)UILabel *Name;
@property (nonatomic, weak)UILabel *Syno;
@property (nonatomic, weak)UILabel *Lab1;
@property (nonatomic, weak)UILabel *Lab2;
@property (nonatomic, weak)UILabel *Lab3;
@property (nonatomic, weak)UILabel *Tag1;
@property (nonatomic, weak)UILabel *Tag2;
@property (nonatomic, weak)UILabel *Tag3;

@end
