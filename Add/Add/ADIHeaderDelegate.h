//
//  ADIHeaderDelegate.h
//  Add
//
//  Created by huangxy on 16/3/30.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import <Foundation/Foundation.h>

//接口声明
@protocol ADIHeaderDelegate <NSObject>

@required
- (void)OnClick:(NSInteger)position;

@optional
- (void)OnTouch;

@end

/* ADIHeaderDelegate_h */
