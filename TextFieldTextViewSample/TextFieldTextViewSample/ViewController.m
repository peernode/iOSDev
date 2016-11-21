//
//  ViewController.m
//  TextFieldTextViewSample
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
    self.myLabelName = [[UILabel alloc]initWithFrame: CGRectMake(50, 0, 100, 100)];
    self.myLabelName.text = @"Name:";
    [self.view addSubview: self.myLabelName];
    
    self.myTextField = [[UITextField alloc] initWithFrame: CGRectMake(50, 70, 200, 30)];
    self.myTextField.placeholder = @"Enter your book name";
//    self.myTextField.backgroundColor = [UIColor grayColor];
    self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.myTextField.clearButtonMode = UITextFieldViewModeAlways;
    self.myTextField.delegate = self;
    [self.view addSubview:self.myTextField];
    
    self.myLabelContent = [[UILabel alloc] initWithFrame: CGRectMake(50, 200, 100, 100)];
    self.myLabelContent.text = @"Abstract:";
    [self.view addSubview: self.myLabelContent];
    
    self.myTextView = [[UITextView alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
    self.myTextView.textColor = [UIColor blueColor];
    self.myTextView.text = @"hello";
    self.myTextView.delegate = self;
    [self.view addSubview: self.myTextView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if(range.location>=20){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"提示" message:@"你已输入20个字" delegate:nil cancelButtonTitle:@"返回" otherButtonTitles:nil];
        [alert show];
        return NO;
    }
    return YES;
}

@end
