//
//  ViewController.m
//  贝塞尔曲线切割圆角
//
//  Created by MaoYan on 2017/3/17.
//  Copyright © 2017年 MY. All rights reserved.
//

#import "ViewController.h"
#import "UIView+UIBezierPathConner.h"
#import "UIImageView+UIBezierPathCorner.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置按钮圆角
//    [self setUpButtonConner];
    //设置imageView圆角
//    [self setUpImageViewCorner];
}

-(void)setUpImageViewCorner
{
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 100, self.view.frame.size.width - 20, 150)];
    imageView.backgroundColor = [UIColor cyanColor];
    imageView.image = [UIImage imageNamed:@"imageView"];
    [self.view addSubview:imageView];
    [imageView imageWithRoundedCornersSize:20];
}

-(void)setUpButtonConner
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(10, 100, self.view.frame.size.width - 20, 44);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"设置圆角" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:button.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer * shape = [[CAShapeLayer alloc]init];
    shape.frame = button.bounds;
    shape.path = path.CGPath;
    button.layer.mask = shape;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
