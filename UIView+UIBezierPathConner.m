//
//  UIView+UIBezierPathConner.m
//  贝塞尔曲线切割圆角
//
//  Created by MaoYan on 2017/3/17.
//  Copyright © 2017年 MY. All rights reserved.
//

#import "UIView+UIBezierPathConner.h"

@implementation UIView (UIBezierPathConner)
- (void)setCornerOnTop:(CGFloat) cornerRadios{
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
                                           cornerRadii:CGSizeMake(cornerRadios, cornerRadios)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;

}
- (void)setCornerOnBottom:(CGFloat) cornerRadios {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(cornerRadios, cornerRadios)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;

}
- (void)setAllCorner:(CGFloat) cornerRadios {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                          cornerRadius:cornerRadios];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;

}
- (void)setNoneCorner{
    self.layer.mask = nil;
}
@end
