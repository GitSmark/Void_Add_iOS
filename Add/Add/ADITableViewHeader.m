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
    
    CGFloat margin = 15;
    CGFloat paddin = 10;
    
    if (self) {
        
        [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 150)];
        
        // add subviews
        UIImageView *Icon = [[UIImageView alloc] init];
        [self addSubview:Icon];
        self.Icon = Icon;
        
        [Icon makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(margin);
            make.left.equalTo(self).offset(2*paddin);
            make.size.equalTo(CGSizeMake(60, 60));
        }];
        
        UIImageView *Code = [[UIImageView alloc] init];
        [self addSubview:Code];
        self.Code = Code;
        
        [Code makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(self);
            make.size.equalTo(CGSizeMake(40, 40));
            make.top.equalTo(self).offset(1.5*margin);
            make.right.equalTo(self).offset(-2*margin);
            //make.edges.insets(UIEdgeInsetsMake(margin, margin, margin, margin));
        }];
        
        UILabel *Name = [[UILabel alloc] init];
        [self addSubview:Name];
        self.Name = Name;
        
        Name.font=[UIFont systemFontOfSize:20.0];
        [Name makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(1.5*margin);
            make.left.equalTo(Icon.right).offset(margin);
            make.right.equalTo(Code.left).offset(-margin);
            make.height.equalTo(20);
        }];
        
        UILabel *Syno = [[UILabel alloc] init];
        [self addSubview:Syno];
        self.Syno = Syno;
        
        [Syno makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Name.bottom).offset(0.5*margin);
            make.left.equalTo(Icon.right).offset(margin);
            make.right.equalTo(Code.left).offset(-margin);
            make.height.equalTo(20);
        }];
        
        UILabel *Lab1 = [[UILabel alloc] init];
        UILabel *Lab2 = [[UILabel alloc] init];
        UILabel *Lab3 = [[UILabel alloc] init];
        
        [self addSubview:Lab1];
        [self addSubview:Lab2];
        [self addSubview:Lab3];
        
        self.Lab1 = Lab1;
        self.Lab2 = Lab2;
        self.Lab3 = Lab3;
        
        Lab1.textAlignment = NSTextAlignmentCenter;
        [Lab1 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Icon.bottom).offset(margin);
            make.left.equalTo(self);
            make.right.equalTo(Lab2.left);
            make.width.equalTo(Lab2);
            
        }];
        
        Lab2.textAlignment = NSTextAlignmentCenter;
        [Lab2 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Icon.bottom).offset(margin);
            make.left.equalTo(Lab1.right);
            make.right.equalTo(Lab3.left);
            make.width.equalTo(Lab1);
            
        }];
        
        Lab3.textAlignment = NSTextAlignmentCenter;
        [Lab3 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Icon.bottom).offset(margin);
            make.left.equalTo(Lab2.right);
            make.right.equalTo(self);
            make.width.equalTo(Lab2);
            
        }];
        
        UILabel *Tag1 = [[UILabel alloc] init];
        UILabel *Tag2 = [[UILabel alloc] init];
        UILabel *Tag3 = [[UILabel alloc] init];
        
        [self addSubview:Tag1];
        [self addSubview:Tag2];
        [self addSubview:Tag3];
        
        Tag1.text = @"心情";
        Tag2.text = @"关注";
        Tag3.text = @"粉丝";
        
        Tag1.textAlignment = NSTextAlignmentCenter;
        [Tag1 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab1.bottom).offset(paddin);
            make.left.equalTo(self);
            make.right.equalTo(Tag2.left);
            make.width.equalTo(Tag2);
            
        }];
        
        Tag2.textAlignment = NSTextAlignmentCenter;
        [Tag2 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab2.bottom).offset(paddin);
            make.left.equalTo(Tag1.right);
            make.right.equalTo(Tag3.left);
            make.width.equalTo(Tag1);
            
        }];
        
        Tag3.textAlignment = NSTextAlignmentCenter;
        [Tag3 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab3.bottom).offset(paddin);
            make.left.equalTo(Tag2.right);
            make.right.equalTo(self);
            make.width.equalTo(Tag2);
            
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
