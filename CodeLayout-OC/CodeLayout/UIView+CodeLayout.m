//
//  UIView+CodeLayout.m
//  CodeLayout-OC
//
//  Created by denghb on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import "UIView+CodeLayout.h"

@implementation UIView (CodeLayout)

- (CGRect)CLFrame
{
    CGRect rect = self.frame;
    rect.origin.x /= CLScale;
    rect.origin.y /= CLScale;
    rect.size.width /= CLScale;
    rect.size.height /= CLScale;
    return rect;
}

- (void)setCLFrame:(CGRect)rect
{
    rect.origin.x *= CLScale;
    rect.origin.y *= CLScale;
    rect.size.width *= CLScale;
    rect.size.height *= CLScale;
    
    self.frame = rect;
}

- (CGFloat)CLLeft
{
    return self.CLFrame.origin.x;
}

- (void)setCLLeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x * CLScale;
    self.frame = frame;
}

- (CGFloat)CLRight
{
    return self.CLFrame.origin.x + self.CLFrame.size.width;
}

- (CGFloat)CLTop
{
    return self.CLFrame.origin.y;
}

- (void)setCLTop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y * CLScale;
    self.frame = frame;
}

- (CGFloat)CLBottom
{
    return self.CLFrame.origin.y + self.CLFrame.size.height;
}

- (CGFloat)CLWidth
{
    return self.CLFrame.size.width;
}

- (void)setCLWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width * CLScale;
    self.frame = frame;
}

- (CGFloat)CLHeight
{
    return self.CLFrame.size.height;
}

- (void)setCLHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height * CLScale;
    self.frame = frame;
}

@end
