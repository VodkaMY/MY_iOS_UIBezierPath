//
//  UIView+UIBezierPathConner.h
//  贝塞尔曲线切割圆角
//
//  Created by MaoYan on 2017/3/17.
//  Copyright © 2017年 MY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (UIBezierPathConner)
//设置顶部圆角
- (void)setCornerOnTop:(CGFloat) cornerRadios;

//设置底部圆角
- (void)setCornerOnBottom:(CGFloat) cornerRadios;

//设置全部圆角
- (void)setAllCorner:(CGFloat) cornerRadios;

//不设置圆角
- (void)setNoneCorner;

@end
