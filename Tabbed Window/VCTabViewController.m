//
//  VCTabViewController.m
//  Tabbed Window
//
//  Created by 朱文杰 on 15/10/26.
//  Copyright © 2015年 朱文杰. All rights reserved.
//

#import "VCTabViewController.h"

@interface VCTabViewController ()

@end

@implementation VCTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    self.tabStyle = NSTabViewControllerTabStyleUnspecified;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    [self.childViewControllers makeObjectsPerformSelector:@selector(setRepresentedObject:) withObject:representedObject];
}

- (void)addChildViewController:(nonnull NSViewController *)childViewController
{
    [super addChildViewController:childViewController];
    [childViewController setRepresentedObject:self.representedObject];
}

@end
