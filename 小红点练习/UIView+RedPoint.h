//
//  UIView+RedPoint.h
//  小红点练习
//
//  Created by 张令林 on 2016/11/16.
//  Copyright © 2016年 personer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RedPoint)

@property (nonatomic,weak) UIView *redView;
@property (nonatomic,weak) UILabel *countLabel;

- (void)addRedPointWithNum:(NSInteger)count frame:(CGRect)frame;

@end
