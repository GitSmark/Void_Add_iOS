//
//  ADITableViewHeader2.m
//  Add
//
//  Created by huangxy on 16/4/8.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewHeader2.h"

@implementation ADITableViewHeader2

@synthesize delegate;

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    CGFloat margin = 15;
    CGFloat paddin = 10;
    
    if (self) {
        
        [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 165)];
        
        // add subviews
        self.Icon = [[UIImageView alloc] init];
        [self addSubview:self.Icon];
        
        self.Icon.sd_layout
        .topSpaceToView(self, margin)
        .leftSpaceToView(self, 2*paddin)
        .heightIs(60)
        .widthIs(60);
        
        self.Code = [[UIImageView alloc] init];
        [self addSubview:self.Code];
        
        self.Code.sd_layout
        .topSpaceToView(self, 1.5*margin)
        .rightSpaceToView(self, 2*margin)
        .heightIs(40)
        .widthIs(40);
        
        self.Name = [[UILabel alloc] init];
        [self addSubview:self.Name];
        
        self.Name.font=[UIFont systemFontOfSize:20.0];
        self.Name.sd_layout
        .topSpaceToView(self, 1.5*margin)
        .leftSpaceToView(self.Icon, margin)
        .rightSpaceToView(self.Code, margin)
        .heightIs(20);
        
        self.Syno = [[UILabel alloc] init];
        [self addSubview:self.Syno];
        
        self.Syno.sd_layout
        .topSpaceToView(self.Name, 0.5*margin)
        .leftSpaceToView(self.Icon, margin)
        .rightSpaceToView(self.Code, margin)
        .heightIs(20);
        
        UILabel *Lab = [[UILabel alloc] init];
        Lab.backgroundColor = ADGColor;
        [self addSubview:Lab];
        
        Lab.sd_layout
        .topSpaceToView(self.Icon, margin)
        .leftSpaceToView(self, paddin)
        .rightSpaceToView(self, paddin)
        .heightIs(0.5);
        
        self.Lab1 = [[UILabel alloc] init];
        self.Lab2 = [[UILabel alloc] init];
        self.Lab3 = [[UILabel alloc] init];
        [self addSubview:self.Lab1];
        [self addSubview:self.Lab2];
        [self addSubview:self.Lab3];
        
        self.Lab1.textAlignment = NSTextAlignmentCenter;
        self.Lab1.sd_layout
        .topSpaceToView(Lab, paddin)
        .leftEqualToView(self)
        .widthRatioToView(self, 0.33)
        .heightIs(20);
        
        self.Lab2.textAlignment = NSTextAlignmentCenter;
        self.Lab2.sd_layout
        .topSpaceToView(Lab, paddin)
        .leftSpaceToView(self.Lab1, 0)
        .widthRatioToView(self, 0.34)
        .heightIs(20);
        
        self.Lab3.textAlignment = NSTextAlignmentCenter;
        self.Lab3.sd_layout
        .topSpaceToView(Lab, paddin)
        .leftSpaceToView(self.Lab2, 0)
        .widthRatioToView(self, 0.33)
        .heightIs(20);
        
        self.Tag1 = [[UILabel alloc] init];
        self.Tag2 = [[UILabel alloc] init];
        self.Tag3 = [[UILabel alloc] init];
        [self addSubview:self.Tag1];
        [self addSubview:self.Tag2];
        [self addSubview:self.Tag3];
        self.Tag1.text = @"心情";
        self.Tag2.text = @"关注";
        self.Tag3.text = @"粉丝";
        
        self.Tag1.textAlignment = NSTextAlignmentCenter;
        self.Tag1.sd_layout
        .topSpaceToView(self.Lab1, paddin)
        .leftEqualToView(self)
        .widthRatioToView(self, 0.33)
        .heightIs(20);
        
        self.Tag2.textAlignment = NSTextAlignmentCenter;
        self.Tag2.sd_layout
        .topSpaceToView(self.Lab2, paddin)
        .leftSpaceToView(self.Tag1, 0)
        .widthRatioToView(self, 0.34)
        .heightIs(20);
        
        self.Tag3.textAlignment = NSTextAlignmentCenter;
        self.Tag3.sd_layout
        .topSpaceToView(self.Lab3, paddin)
        .leftSpaceToView(self.Tag2, 0)
        .widthRatioToView(self, 0.33)
        .heightIs(20);
        
        // add selectors
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor clearColor];
        [button setTag:0];
        [button addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        button.sd_layout
        .topEqualToView(self)
        .leftEqualToView(self)
        .rightEqualToView(self)
        .bottomEqualToView(Lab);
        
        UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        button1.backgroundColor = [UIColor clearColor];
        [button1 setTag:1];
        [button1 addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button1];
        
        UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        button2.backgroundColor = [UIColor clearColor];
        [button2 setTag:2];
        [button2 addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button2];
        
        UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
        button3.backgroundColor = [UIColor clearColor];
        [button3 setTag:3];
        [button3 addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button3];
        
        button1.sd_layout
        .topEqualToView(Lab)
        .leftEqualToView(self.Tag1)
        .rightEqualToView(self.Tag1)
        .bottomEqualToView(self);
        
        button2.sd_layout
        .topEqualToView(Lab)
        .leftEqualToView(self.Tag2)
        .rightEqualToView(self.Tag2)
        .bottomEqualToView(self);
        
        button3.sd_layout
        .topEqualToView(Lab)
        .leftEqualToView(self.Tag3)
        .rightEqualToView(self.Tag3)
        .bottomEqualToView(self);
        
    }
    
    return self;
}

- (void) Click:(id)sender {
    //回调接口，由使用者负责具体实现
    [[self delegate] OnClick:[sender tag]];
}

@end
