//
//  ADWTableViewCell.m
//  Add
//
//  Created by huangxy on 16/4/18.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "ADWTableViewCell.h"
#import "ADWTableModel.h"

@implementation ADWTableViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        CGFloat margin = 10;
        CGFloat length = 60;
        
        self.head = [[UIImageView alloc] init];
        self.name = [[UILabel alloc] init];
        self.text = [[UILabel alloc] init];
        self.time = [[UILabel alloc] init];
        
        [self addSubview:self.head];
        [self addSubview:self.name];
        [self addSubview:self.text];
        [self addSubview:self.time];
        
        self.head.sd_layout
        .leftSpaceToView(self, margin)
        .topSpaceToView(self, margin)
        .heightIs(length)
        .widthIs(length);
        
        self.name.sd_layout
        .leftSpaceToView(self.head, margin)
        .rightSpaceToView(self, margin)
        .topSpaceToView(self, margin)
        .autoHeightRatio(0);
        
        self.text.sd_layout
        .leftSpaceToView(self.head, margin)
        .topSpaceToView(self.name, margin)
        .rightSpaceToView(self, margin)
        .autoHeightRatio(0);
        
        self.time.font = [UIFont fontWithName:@"Helvetica" size:15];
        self.time.textColor = ADGColor;
        self.time.sd_layout
        .leftSpaceToView(self.head, margin)
        .topSpaceToView(self.text, margin)
        .rightSpaceToView(self, margin)
        .autoHeightRatio(0);
        
        [self setupAutoHeightWithBottomView:self.time bottomMargin:margin];
        self.backgroundColor = [UIColor clearColor];
        
    }
    return self;
}

- (void)setXMObject:(XMTableObject *)XMObject {
    [super setXMObject:XMObject];
    ADWTableModel *XM = (ADWTableModel *)XMObject.XModel;
    //self.head.backgroundColor = ADPColor;
    [self.head sd_setImageWithURL:[NSURL URLWithString:@"https://avatars1.githubusercontent.com/u/14328084?v=3&s=460"] placeholderImage:[UIImage imageNamed:@"default"]];
    self.name.text = XM.name;
    self.text.text = XM.text;
    self.time.text = XM.time;
    self.accessoryType = UITableViewCellAccessoryNone;
}

@end
