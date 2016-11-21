//
//  ViewController.m
//  ScrollViewSample
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
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSLog(@"ios 应用发布后 .app 应用文件 路径::%@",bundle );
    
    self.myScrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, 320, 300)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage: [UIImage imageNamed: @"tesla.jpg"]];
//    [self.myScrollView addSubview: imageView];
    imageView.frame = CGRectMake(0, 0, 320, 460);
    
    self.myScrollView.contentSize = self.view.bounds.size;
    [self.view addSubview: imageView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
