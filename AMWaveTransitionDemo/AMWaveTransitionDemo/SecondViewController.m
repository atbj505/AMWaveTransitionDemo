//
//  SecondViewController.m
//  AMWaveTransitionDemo
//
//  Created by 杨启晖 on 14/12/9.
//  Copyright (c) 2014年 telcolor. All rights reserved.
//

#import "SecondViewController.h"
#import "AMWaveTransition.h"

@interface SecondViewController ()
@property (nonatomic, strong)AMWaveTransition *interactive;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactive = [[AMWaveTransition alloc]init];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.interactive attachInteractiveGestureToNavigationController:self.navigationController];
}
-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    [self.interactive detachInteractiveGesture];
}


@end
