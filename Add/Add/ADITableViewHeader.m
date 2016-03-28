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
    
    CGFloat margin = 10;
    
    if (self) {
        
        [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 120)];
        
        // add subviews
        UIImageView *Icon = [[UIImageView alloc] init];
        [self addSubview:Icon];
        self.Icon = Icon;
        
        [Icon makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(margin);
            make.left.equalTo(self).offset(margin);
            make.size.equalTo(CGSizeMake(50, 50));
        }];
        
        UIImageView *Code = [[UIImageView alloc] init];
        [self addSubview:Code];
        self.Code = Code;
        self.Code.backgroundColor = ADBColor;
        
        [Code makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self);
            make.size.equalTo(CGSizeMake(30, 30));
            make.top.equalTo(self).offset(2*margin);
            make.right.equalTo(self).offset(-margin);
            //make.edges.insets(UIEdgeInsetsMake(margin, margin, margin, margin));
        }];
        
        UILabel *Name = [[UILabel alloc] init];
        [self addSubview:Name];
        self.Name = Name;
        self.Name.backgroundColor = ADPColor;
        
        [Name makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(margin);
            make.left.equalTo(Icon.right).offset(margin);
            make.right.equalTo(Code.left).offset(-margin);
            make.height.equalTo(20);
            //make.edges.insets(UIEdgeInsetsMake(margin, margin, margin, margin));
        }];
        
        UILabel *Syno = [[UILabel alloc] init];
        [self addSubview:Syno];
        self.Syno = Syno;
        self.Syno.backgroundColor = ADGColor;
        
        [Syno makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Name.bottom).offset(margin);
            make.left.equalTo(Icon.right).offset(margin);
            make.right.equalTo(Code.left).offset(-margin);
            make.height.equalTo(20);
            //make.edges.insets(UIEdgeInsetsMake(margin, margin, margin, margin));
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
