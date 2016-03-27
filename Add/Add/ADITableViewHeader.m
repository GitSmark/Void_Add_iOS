//
//  ADITableViewHeader.m
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewHeader.h"

@implementation ADITableViewHeader

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    CGFloat spacing = 5;
    CGFloat margin = 10;
    
    if (self) {
        
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(SCREEN_WIDTH);
            make.height.mas_equalTo(100);
        }];
        
        // add subviews
        UIImageView *Icon = [[UIImageView alloc] init];
        [self addSubview:Icon];
        self.Icon = Icon;
        [Icon mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).with.offset(spacing);
            make.left.equalTo(self).with.offset(spacing);
            make.bottom.equalTo(self).with.offset(spacing);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
