//
//  ViewController.m
//  WebViewSample
//
//  Created by 徐俊扬 on 16/10/3.
//  Copyright © 2016年 徐俊扬. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@property (strong, nonatomic) UIButton *button1;
@property (strong, nonatomic) UIButton *button2;
@property (strong, nonatomic) UIButton *button3;
@property (strong, nonatomic) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.button1 = [[UIButton alloc] initWithFrame:CGRectMake(30, 50, 110, 40)];
    [self.button1 setTitle: @"本地HTML" forState: UIControlStateNormal];
    [self.button1 setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
    self.button1.layer.borderWidth = 1;
    self.button1.layer.cornerRadius = 10;
    [self.view addSubview: self.button1];
    
    self.button2 = [[UIButton alloc] initWithFrame: CGRectMake(150, 50, 110, 40)];
    [self.button2 setTitle:@"本地HTML2" forState:UIControlStateNormal];
    [self.button2 setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
    self.button2.layer.borderWidth = 1;
    self.button2.layer.cornerRadius = 10;
    [self.view addSubview: self.button2];
    
    self.button3 = [[UIButton alloc] initWithFrame: CGRectMake(270, 50, 110, 40)];
    [self.button3 setTitle: @"加载网址" forState:UIControlStateNormal];
    [self.button3 setTitleColor: [UIColor blueColor] forState:UIControlStateNormal];
    self.button3.layer.borderWidth = 1;
    self.button3.layer.cornerRadius = 10;
    [self.button3 addTarget: self action:@selector(loadRequest:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.button3];
    
    self.webView = [[UIWebView alloc] initWithFrame: CGRectMake(30, 100, 350, 500)];
    self.webView.scalesPageToFit = YES;
    self.webView.layer.borderWidth = 1;
    self.webView.delegate = self;
    [self.view addSubview: self.webView];
    
//    一般我们如果还是使用的http,不更新的话，可通过在 Info.plist 中声明，倒退回不安全的网络请求。
//    
//    <key>NSAppTransportSecurity</key>
//    <dict>
//    <key>NSAllowsArbitraryLoads</key>
//    <true/>
//    </dict>
    
//    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
//    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadRequest: (id)sender{
    NSURL *url = [NSURL URLWithString: @"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    [self.webView loadRequest: request];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"ERROR LOADING WEBPAGE: %@", error);
}
- (void) webViewDidFinishLoad:(UIWebView*)webView
{
    NSLog(@"finished");
}


@end
