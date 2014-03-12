//
//  CXAlertItem.m
//  CXAlertViewDemo
//
//  Created by ChrisXu on 13/9/12.
//  Copyright (c) 2013年 ChrisXu. All rights reserved.
//

#import "CXAlertButtonItem.h"

@implementation CXAlertButtonItem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    if (_defaultRightLineVisible) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextClearRect(context, self.bounds);
        
        CGContextSetStrokeColorWithColor(context, self.rightLineColor.CGColor);
        CGContextSetLineWidth(context, [UIScreen mainScreen].scale == 2. ? 1.0 : 2.0);
        CGContextMoveToPoint(context, CGRectGetWidth(self.frame),0);
        CGContextAddLineToPoint(context, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
        CGContextStrokePath(context);
    }
}

@end
