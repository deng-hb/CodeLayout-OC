//
//  ViewController.m
//  CodeLayout-OC
//
//  Created by denghb.com on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CodeLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UILabel *textLabel = [[UILabel alloc]initWithFrame:CLRectMake(7, 66, 361, 131)];
    [textLabel setFont:CLFont(14)];
    [textLabel setText:@"我是测试Banner@1342@#¥%，然而没有图片"];
    [textLabel setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:textLabel];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CLRectMake(textLabel.left, textLabel.bottom + 10, 80, 30)];
    [blueView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:blueView];
    
    
    UILabel *text2Label = [[UILabel alloc]initWithFrame:CLRectMake(blueView.right + 10, blueView.top, 100, 80)];
    [text2Label setNumberOfLines:0];
    [text2Label setFont:CLFont(12)];
    [text2Label setText:@"我在blue右边，并且和ta有一样y"];
    [text2Label setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:text2Label];
    
    
    UILabel *text3Label = [[UILabel alloc]initWithFrame:CLRectMake(text2Label.right + 10, text2Label.midY-10, 100, 20)];
    [text3Label setNumberOfLines:0];
    [text3Label setFont:CLFont(12)];
    [text3Label setText:@"我在green的水平居中"];
    [text3Label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:text3Label];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
