//
//  ViewController.m
//  SwitchSlideBtnSample
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
    self.leftSwitch = [[UISwitch alloc] initWithFrame: CGRectMake(50, 100, 20, 10)];
    [self.leftSwitch setOn: YES];
    [self.leftSwitch addTarget: self action:@selector(valueChanged:) forControlEvents: UIControlEventValueChanged];
    [self.view addSubview: self.leftSwitch];

    self.rightSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(200, 100, 20, 10)];
    [self.rightSwitch setOn:YES];
    [self.rightSwitch addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview: self.rightSwitch];
    
    self.myLabel = [[UILabel alloc] initWithFrame: CGRectMake(50, 130, 100, 100)];
    self.myLabel.text = @"1.0";
    [self.view addSubview: self.myLabel];
    
    self.mySlide = [[UISlider alloc] initWithFrame: CGRectMake(50, 200, 150, 20)];
    self.mySlide.minimumValue = 0;
    self.mySlide.maximumValue = 10;
    self.mySlide.value = 5;
    self.mySlide.continuous = YES;
    [self.mySlide addTarget: self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview: self.mySlide];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)valueChanged: (id)sender{
    UISwitch *witchSwitch = (UISwitch *)sender;
    BOOL setting = witchSwitch.isOn;
    [self.leftSwitch setOn:setting animated: YES];
    [self.rightSwitch setOn:setting animated:YES];
}

-(void)sliderValueChanged: (id)sender{
    UISlider *slider = (UISlider *)sender;
    self.myLabel.text = [NSString stringWithFormat: @"%.1f", slider.value];
}

@end
