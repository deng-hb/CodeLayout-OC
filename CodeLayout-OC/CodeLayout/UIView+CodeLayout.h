//
//  UIView+CodeLayout.h
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import <UIKit/UIKit.h>

#define CLScreenWidth                    ([UIScreen mainScreen].bounds.size.width)

//#define CLBaseWidth    320.0

#ifndef CLBaseWidth
#define CLBaseWidth                      375.0// 默认设计稿为4.7寸系列iPhone
#endif

#define CLScale                          (CLScreenWidth / CLBaseWidth)
#define CLRectMake(x, y, width, height)  CGRectMake(x * CLScale, y * CLScale, width * CLScale, height * CLScale)
#define CLFont(size)                     [UIFont systemFontOfSize:(size * CLScale)]

// 宽度只能在一行中
#define CLTextWidth(text, font)          (text && [text length] > 0 && font) ? ([text \
        boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.width) / CLScale : 0.0;

#define CLTextHeight(text, font, width)  (text && [text length] > 0 && font) ? ([text \
        boundingRectWithSize:CGSizeMake(width * CLScale, MAXFLOAT) options:(NSStringDrawingUsesLineFragmentOrigin) \
        attributes:@{NSFontAttributeName:font} context:nil].size.height) / CLScale : 0.0;

// code layout view frame x
#define CLX(view)                        (view.frame.origin.x / CLScale)
#define CLsetX(view, x)                  CGRect frame = view.frame;frame.origin.x = x * CLScale;view.frame = frame;
// max x
#define CLMX(view)                       ((view.frame.origin.x + view.frame.size.width) / CLScale)
#define CLsetMX(view, mx)                CGRect frame = self.frame;view.origin.x = (mx - frame.size.width) * CLScale;view.frame = frame;

#define CLY(view)                        (view.frame.origin.y / CLScale)
#define CLsetY(view, y)                  CGRect frame = view.frame;frame.origin.y = y * CLScale;view.frame = frame;
// max y
#define CLMY(view)                       ((view.frame.origin.y + view.frame.size.height) / CLScale)
#define CLsetMY(view, my)                CGRect frame = self.frame;view.origin.y = (my - frame.size.width) * CLScale;view.frame = frame;

// width
#define CLW(view)                        (view.frame.size.width / CLScale)
#define CLsetW(wiew, w)                  CGRect frame = view.frame;frame.size.width = w * CLScale;view.frame = frame;
// height
#define CLH(view)                        (view.frame.size.height / CLScale)
#define CLsetH(wiew, w)                  CGRect frame = view.frame;frame.size.height = w * CLScale;view.frame = frame;

@interface UIView (CodeLayout)

@property(nonatomic) CGRect  CLFrame;

@property(nonatomic) CGFloat CLLeft;

@property(nonatomic) CGFloat CLRight;

@property(nonatomic) CGFloat CLTop;

@property(nonatomic) CGFloat CLBottom;

@property(nonatomic) CGFloat CLWidth;

@property(nonatomic) CGFloat CLHeight;

@end
