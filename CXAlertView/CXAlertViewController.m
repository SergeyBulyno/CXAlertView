//
//  CXAlertViewController.m
//  CXAlertViewDemo
//
//  Created by ChrisXu on 13/9/12.
//  Copyright (c) 2013年 ChrisXu. All rights reserved.
//

#import "CXAlertViewController.h"

@interface CXAlertView ()

- (void)setup;
- (void)resetTransition;
- (void)invalidateLayout;

@end

@interface CXAlertViewController ()

@end

@implementation CXAlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View life cycle

- (void)loadView
{
    self.view = self.alertView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.alertView setup];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [self.alertView resetTransition];
    [self.alertView invalidateLayout];
}

- (NSUInteger)supportedInterfaceOrientations
{
    return self.alertView.supportedInterfaceOrientations;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (self.alertView.supportedInterfaceOrientations & toInterfaceOrientation);
}

- (BOOL)shouldAutorotate
{
    NSDictionary *map = @{@(UIDeviceOrientationPortrait): @(UIInterfaceOrientationPortrait),
                          @(UIDeviceOrientationPortraitUpsideDown): @(UIInterfaceOrientationPortraitUpsideDown),
                          @(UIDeviceOrientationLandscapeLeft): @(UIInterfaceOrientationLandscapeLeft),
                          @(UIDeviceOrientationLandscapeRight): @(UIInterfaceOrientationLandscapeRight)};

    UIDeviceOrientation deviceOrientation = [[UIDevice currentDevice] orientation];
    NSNumber *orientation = map[@(deviceOrientation)];
    return (orientation ? (self.alertView.supportedInterfaceOrientations & [orientation unsignedIntegerValue]) : YES);
}

- (BOOL)prefersStatusBarHidden
{
    return _rootViewControllerPrefersStatusBarHidden;
}
@end
