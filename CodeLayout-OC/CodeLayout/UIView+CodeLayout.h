//
//  UIView+CodeLayout.h
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CLScreenWidth                    ([UIScreen mainScreen].bounds.size.width)
#define CLScreenHeight                   ([UIScreen mainScreen].bounds.size.height)
#define CLScale                          (CLScreenWidth / 375)// 默认设计稿为4.7寸系列iPhone

#define CLRectMake(x, y, width, height)  CGRectMake(x * CLScale, y, width * CLScale, height * CLScale)
#define CLFont(size)                     [UIFont systemFontOfSize:size * CLScale]

@interface UIView (CodeLayout)

/**
 *  返回UIView及其子类的位置和尺寸。分别为左、右边界在X轴方向上的距离，上、下边界在Y轴上的距离，View的宽和高。
 */

@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat bottom;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;


@property(nonatomic,readonly) CGFloat midX;
@property(nonatomic,readonly) CGFloat midY;

@end
