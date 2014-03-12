//
//  CXAlertButtonContainerView.m
//  CXAlertViewDemo
//
//  Created by ChrisXu on 13/9/25.
//  Copyright (c) 2013年 ChrisXu. All rights reserved.
//

#import "CXAlertButtonContainerView.h"

@interface CXAlertButtonContainerView ()

@end

@implementation CXAlertButtonContainerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _buttons = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        _buttons = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    if (_defaultTopLineVisible) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextClearRect(context, self.bounds);
        
        CGContextSetStrokeColorWithColor(context, self.topLineColor.CGColor);
        CGContextSetLineWidth(context, [UIScreen mainScreen].scale == 2. ? 1.0 : 2.0);
        CGContextMoveToPoint(context, 0,0);
        CGContextAddLineToPoint(context, CGRectGetWidth(self.frame), 0);
        CGContextStrokePath(context);
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

#pragma mark - PB
- (void)addButtonWithTitle:(NSString *)title type:(CXAlertViewButtonType)type handler:(CXAlertButtonHandler)handler
{
    
}

#pragma mark - PV

@end
