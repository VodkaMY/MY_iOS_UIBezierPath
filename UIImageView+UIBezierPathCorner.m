//
//  UIImageView+UIBezierPathCorner.m
//  贝塞尔曲线切割圆角
//
//  Created by MaoYan on 2017/3/17.
//  Copyright © 2017年 MY. All rights reserved.
//

#import "UIImageView+UIBezierPathCorner.h"

@implementation UIImageView (UIBezierPathCorner)

- (UIImageView *)imageWithRoundedCornersSize:(float)cornerRadius
{
    UIImageView *imageView = self;
    UIImage * original = self.image;
    // Begin a new image that will be the new image with the rounded corners
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, NO, [UIScreen mainScreen].scale); //[UIScreen mainScreen].scale
    
    // Add a clip before drawing anything, in the shape of an rounded rect
    [[UIBezierPath bezierPathWithRoundedRect:imageView.bounds
                                cornerRadius:cornerRadius] addClip];
    // Draw your image
    [original drawInRect:imageView.bounds];
    
    // Get the image, here setting the UIImageView image
    imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    
    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
    
    return imageView;
}
@end
