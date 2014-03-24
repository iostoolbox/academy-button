//
//  ViewController.m
//  iOSToolboxButton
//
//  Created by iOS Toolbox on 23/03/14.
//  Copyright (c) 2014 iOS Toolbox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.224 green:0.263 blue:0.369 alpha:1];
    
    // buy button
    UIButton *buyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [buyButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [buyButton setBackgroundImage:[UIImage imageNamed:@"buyButton"] forState:UIControlStateNormal];
    [buyButton setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1] forState:UIControlStateNormal];
    [buyButton setTitle:NSLocalizedString(@"Buy Plugin Today!", nil) forState:UIControlStateNormal];
    buyButton.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23];
    [self.view addSubview:buyButton];
    
    // center buyButton horizontally in superview
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:buyButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    
    // align buyButton from the top
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-81.5-[buyButton]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(buyButton)]];
}

@end
