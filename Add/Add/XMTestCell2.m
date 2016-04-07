//
//  XMTestCell2.m
//  Add
//
//  Created by huangxy on 16/4/5.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "XMTestCell2.h"
#import "XMTestModel2.h"

@implementation XMTestCell2

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        //[self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200)];
        
        self.text = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 100, 50)];
        self.title = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 100, 50)];
        self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake(150, 0, 100, 100)];
        self.ImageView.backgroundColor = [UIColor blueColor];
        
        [self addSubview:self.text];
        [self addSubview:self.title];
        [self addSubview:self.ImageView];
        
//        self.text.sd_layout
//        .leftSpaceToView(self, 10)
//        .topSpaceToView(self, 50)
//        .widthIs(50)
//        .heightIs(50);
//        
//        self.title.sd_layout
//        .leftSpaceToView(self, 110)
//        .topEqualToView(self)
//        .widthIs(200)
//        .heightIs(50);
        
//        [self setupAutoHeightWithBottomView:self.title bottomMargin:10];
        
    }
    
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)setXMObject:(XMTableObject *)XMObject
{
    [super setXMObject:XMObject];
    XMTestModel2 *cellModel = (XMTestModel2 *)XMObject.XModel;
    self.text.text = cellModel.text;
    self.title.text = cellModel.title;
    self.ImageView.image= [UIImage imageNamed:cellModel.iconImage];
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
}

@end
