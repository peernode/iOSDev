//
//  ViewController.h
//  TextFieldTextViewSample
//
//  Created by 徐俊扬 on 16/10/2.
//  Copyright © 2016年 徐俊扬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (nonatomic, strong) UILabel *myLabelName;
@property (nonatomic, strong) UITextField *myTextField;
@property (nonatomic, strong) UILabel *myLabelContent;
@property (nonatomic, strong) UITextView *myTextView;

@end

