//
//  UIView+CodeLayout.h
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CLScreenWidth                    ([UIScreen mainScreen].bounds.size.width)
#define CLScale                          (CLScreenWidth / 375.0)// 默认设计稿为4.7寸系列iPhone

#define CLRectMake(x, y, width, height)  CGRectMake(x * CLScale, y * CLScale, width * CLScale, height * CLScale)
#define CLFont(size)                     [UIFont systemFontOfSize:(size * CLScale)]

@interface UIView (CodeLayout)

@property(nonatomic) CGFloat CLLeft;

@property(nonatomic) CGFloat CLRight;

@property(nonatomic) CGFloat CLTop;

@property(nonatomic) CGFloat CLBottom;

@property(nonatomic) CGFloat CLWidth;

@property(nonatomic) CGFloat CLHeight;


@end
