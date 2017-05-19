//
//  UIView+CodeLayout.h
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import <UIKit/UIKit.h>

// 基于4.7寸iPhone适配Other
#define CLBaseWidth                      375.0

// 缩放比例（重要）
#define CLScale                          ([UIScreen mainScreen].bounds.size.width / CLBaseWidth)

// 按比例计算数值
#define CLSize(num)                      (num * CLScale)

// 按比例字体
#define CLFont(size)                     [UIFont systemFontOfSize:(size * CLScale)]

// 按比例计算文字宽度（一行中）
#define CLTextWidth(text, font)          (text && [text length] > 0 && font) ? ([text \
        boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.width) / CLScale : 0.0;
// 按比例计算字体高度（width=CLWidth）
#define CLTextHeight(text, font, width)  (text && [text length] > 0 && font && width && width > 0.0) ? ([text \
        boundingRectWithSize:CGSizeMake(width * CLScale, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.height) / CLScale : 0.0;

@interface UIView (CodeLayout)

/**
 * Code Layout view frame
 */
@property(nonatomic)          CGRect  CLFrame;

/**
 * Code Layout view frame origin.x
 */
@property(nonatomic)          CGFloat CLLeft;

/**
 * Code Layout view frame origin.x + size.width
 */
@property(nonatomic,readonly) CGFloat CLRight;

/**
 * Code Layout view frame origin.y
 */
@property(nonatomic)          CGFloat CLTop;

/**
 * Code Layout view frame origin.y + size.height
 */
@property(nonatomic,readonly) CGFloat CLBottom;

/**
 * Code Layout view frame size.width
 */
@property(nonatomic)          CGFloat CLWidth;

/**
 * Code Layout view frame size.height
 */
@property(nonatomic)          CGFloat CLHeight;

@end
