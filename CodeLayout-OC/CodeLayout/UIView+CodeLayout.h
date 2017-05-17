//
//  UIView+CodeLayout.h
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CLBaseWidth                      375.0// 基于4.7寸iPhone适配Other

#define CLScale                          ([UIScreen mainScreen].bounds.size.width / CLBaseWidth)

#define CLFont(size)                     [UIFont systemFontOfSize:(size * CLScale)]

#define CLTextWidth(text, font)          (text && [text length] > 0 && font) ? ([text \
        boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.width) / CLScale : 0.0;

#define CLTextHeight(text, font, width)  (text && [text length] > 0 && font && width && width > 0.0) ? ([text \
        boundingRectWithSize:CGSizeMake(width * CLScale, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.height) / CLScale : 0.0;

@interface UIView (CodeLayout)

@property(nonatomic)          CGRect  CLFrame;

@property(nonatomic)          CGFloat CLLeft;

@property(nonatomic,readonly) CGFloat CLRight;

@property(nonatomic)          CGFloat CLTop;

@property(nonatomic,readonly) CGFloat CLBottom;

@property(nonatomic)          CGFloat CLWidth;

@property(nonatomic)          CGFloat CLHeight;

@end
