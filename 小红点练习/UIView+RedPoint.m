//
//  UIView+RedPoint.m
//  小红点练习
//
//  Created by 张令林 on 2016/11/16.
//  Copyright © 2016年 personer. All rights reserved.
//

#import "UIView+RedPoint.h"
#import <objc/runtime.h>


@implementation UIView (RedPoint)

static UILabel *count;
static UIView *red;

#pragma mark - 添加小红点的位置及数量
- (void)addRedPointWithNum:(NSInteger)count frame:(CGRect)frame
{
    if (count <= 0)
    {
        [[self redView] setFrame:CGRectMake(0, 0, 0, 0)];
        [[self countLabel] setFrame:CGRectMake(0, 0, 0, 0)];
        [self setRedView:nil];
        [self setCountLabel:nil];
    }else
    {
        CGFloat radius = frame.size.width;
        CGFloat hei = frame.size.height;
        CGFloat wid;
        NSString *countStr;
        
        if (count < 99)
        {
            wid = (count/10+1)*radius;
            countStr = [NSString stringWithFormat:@"%zd",count];
            
        }else
        {
            wid = 2*radius;
            countStr = @"99+";
        }
        //如果没有添加过红点
        if (![self redView])
        {
            UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, wid, hei)];
            redView.layer.cornerRadius = radius*0.5;
            redView.layer.masksToBounds = YES;
            redView.backgroundColor = [UIColor redColor];
            [self setRedView:redView];
            [self addSubview:[self redView]];
            
            UILabel *countLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, wid, hei)];
            countLabel.text = countStr;
            countLabel.textAlignment = NSTextAlignmentCenter;
            countLabel.textColor = [UIColor whiteColor];
            countLabel.center = redView.center;
            [self setCountLabel:countLabel];
            [self addSubview:[self countLabel]];
        }else
        {
            [[self redView] setFrame:CGRectMake(frame.origin.x, frame.origin.y, wid, hei)];
            [[self countLabel] setFrame:CGRectMake(0, 0, wid, hei)];
            [self countLabel].center = [self redView].center;
            self.countLabel.text = countStr;
        }
    }
    
}
#pragma mark - 设置属性和获取属性的方法
-(UIView *)redView
{
    return objc_getAssociatedObject(self, &red);
}
-(void)setRedView:(UIView *)redView
{
    objc_setAssociatedObject(self, &red, redView, OBJC_ASSOCIATION_ASSIGN);
}
-(UILabel *)countLabel
{
    return objc_getAssociatedObject(self, &count);
}
-(void)setCountLabel:(UILabel *)countLabel
{
    objc_setAssociatedObject(self, &count, countLabel, OBJC_ASSOCIATION_ASSIGN);
}

@end
