//
//  ViewController.m
//  LabelButtonSample
//
//  Created by 徐俊扬 on 16/10/2.
//  Copyright © 2016年 徐俊扬. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 120, 20)];
    self.label.text = @"hello world";
    [self.view addSubview:_label];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(10, 80, 120, 30)];
    [self.button setTitle:@"点我" forState: UIControlStateNormal];
    [self.button setTitleColor: [UIColor blueColor] forState: UIControlStateNormal];
    [self.button addTarget: self action:@selector(tapButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapButton {
    self.label.text = @"hello tom";
}

@end
