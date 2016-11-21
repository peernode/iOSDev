//
//  ViewController.m
//  FrameBoundSample
//
//  Created by 徐俊扬 on 16/10/3.
//  Copyright © 2016年 徐俊扬. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view1 = [[UIView alloc] initWithFrame: CGRectMake(200, 200, 100, 100)];
    [view1 setBounds:CGRectMake(-200, -200, 100, 100)];

    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview: view1];
    NSLog(@"view1 frame:%@========view1 bounds:%@", NSStringFromCGRect(view1.frame), NSStringFromCGRect(view1.bounds));
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    view2.backgroundColor = [UIColor yellowColor];
    [view1 addSubview: view2];
    NSLog(@"view2 frame:%@========view2 bounds:%@", NSStringFromCGRect(view2.frame), NSStringFromCGRect(view2.bounds));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
