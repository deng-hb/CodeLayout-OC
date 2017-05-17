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
    return self.frame.origin.x / CLScale;
}

- (void)setCLLeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x * CLScale;
    self.frame = frame;
}

- (CGFloat)CLRight
{
    return (self.frame.origin.x + self.frame.size.width) / CLScale;
}

- (void)setCLRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = (right - frame.size.width) * CLScale;
    self.frame = frame;
}

- (CGFloat)CLTop
{
    return self.frame.origin.y / CLScale;
}

- (void)setCLTop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y * CLScale;
    self.frame = frame;
}

- (CGFloat)CLBottom
{
    return (self.frame.origin.y + self.frame.size.height) / CLScale;
}

- (void)setCLBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = (bottom - frame.size.height) * CLScale;
    self.frame = frame;
}

- (CGFloat)CLWidth
{
    return self.frame.size.width / CLScale;
}

- (void)setCLWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width * CLScale;
    self.frame = frame;
}

- (CGFloat)CLHeight
{
    return self.frame.size.height / CLScale;
}

- (void)setCLHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height * CLScale;
    self.frame = frame;
}

@end
