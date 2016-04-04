//
//  ADITableViewHeader.m
//  Add
//
//  Created by huangxy on 16/3/27.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADITableViewHeader.h"

@implementation ADITableViewHeader

@synthesize delegate;

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    CGFloat margin = 15;
    CGFloat paddin = 10;
    
    if (self) {
        
        [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 165)];
        
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
        
        UILabel *Lab = [[UILabel alloc] init];
        Lab.backgroundColor = ADGColor;
        [self addSubview:Lab];
        
        [Lab makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Icon.bottom).offset(margin);
            make.left.equalTo(self).offset(paddin);
            make.right.equalTo(self).offset(-paddin);
            make.height.equalTo(0.5);
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
            make.top.equalTo(Lab.bottom).offset(paddin);
            make.left.equalTo(self);
            make.right.equalTo(Lab2.left);
            make.width.equalTo(Lab2);
            
        }];
        
        Lab2.textAlignment = NSTextAlignmentCenter;
        [Lab2 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab.bottom).offset(paddin);
            make.left.equalTo(Lab1.right);
            make.right.equalTo(Lab3.left);
            make.width.equalTo(Lab1);
            
        }];
        
        Lab3.textAlignment = NSTextAlignmentCenter;
        [Lab3 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab.bottom).offset(paddin);
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
        self.Tag1 = Tag1;
        self.Tag2 = Tag2;
        self.Tag3 = Tag3;
        
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
        
//        UIButton *Custombtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        Custombtn.frame = CGRectMake(50, 250, 73, 44);
//        [Custombtn setTitle:@"Click..." forState:UIControlStateNormal];
//        [Custombtn addTarget:self action:@selector(Click) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:Custombtn];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor = [UIColor clearColor];
        [button setTag:0];
        [button addTarget:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        [button makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.left.equalTo(self);
            make.right.equalTo(self);
            make.bottom.equalTo(Lab.top).offset(paddin);
        }];
        
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
        
        [button1 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab.bottom);
            make.left.equalTo(self);
            make.right.equalTo(button2.left);
            make.bottom.equalTo(self.bottom);
            make.width.equalTo(button2);
        }];
        
        [button2 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab.bottom);
            make.left.equalTo(button1.right);
            make.right.equalTo(button3.left);
            make.bottom.equalTo(self.bottom);
            make.width.equalTo(button1);
        }];
        
        [button3 makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(Lab.bottom);
            make.left.equalTo(button2.right);
            make.right.equalTo(self);
            make.bottom.equalTo(self.bottom);
            make.width.equalTo(button2);
        }];
        
    }
    
    return self;
}

- (void) Click:(id)sender {
    //回调接口，由使用者负责具体实现
    [[self delegate] OnClick:[sender tag]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
