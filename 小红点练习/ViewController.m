//
//  ViewController.m
//  小红点练习
//
//  Created by 张令林 on 2016/11/16.
//  Copyright © 2016年 personer. All rights reserved.
//

#import "ViewController.h"
#import "UIView+RedPoint.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //调用初始化方法
    [self setUpUI];
}

#pragma mark 初始化方法
- (void)setUpUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addRedPointWithNum:800 frame:CGRectMake(100, 100, 20, 20)];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view addRedPointWithNum:0 frame:CGRectMake(100, 100, 20, 20)];
}


@end
