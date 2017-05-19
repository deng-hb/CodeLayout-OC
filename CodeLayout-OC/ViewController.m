//
//  ViewController.m
//  CodeLayout-OC
//
//  Created by denghb.com on 2017/5/15.
//  Copyright © 2017年 denghb.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%f",CLBaseWidth);
    
    UILabel *textLabel = [[UILabel alloc]init];
    [textLabel setCLFrame:CGRectMake(10, 66, (CLBaseWidth - 20), 131)];
    [textLabel setFont:CLFont(14)];
    [textLabel setText:@"我是测试Banner@1342@#¥%，然而没有图片"];
    [textLabel setBackgroundColor:[UIColor redColor]];
    [self.view addSubview:textLabel];
    
    UIView *blueView = [[UIView alloc]init];
    [blueView setCLFrame:CGRectMake(textLabel.CLLeft, (textLabel.CLBottom + 10), 80, 30)];
    [blueView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:blueView];
    
    NSLog(@"%f",textLabel.CLBottom + 10);
    
    NSLog(@"%@",NSStringFromCGRect(textLabel.frame));
    
    NSLog(@"%@",NSStringFromCGRect(blueView.frame));
    
    
    UILabel *text2Label = [[UILabel alloc]init];
//    [text2Label setFrame:CLRectMake((blueView.CLRight + 10), blueView.CLTop, 100, 80)];
    [text2Label setCLFrame:CGRectMake(blueView.CLRight + 10, blueView.CLTop, 100, 80)];
    [text2Label setNumberOfLines:0];
    [text2Label setFont:CLFont(12)];
    [text2Label setText:@"我在blue右边，并且和ta有一样y"];
    [text2Label setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:text2Label];
    
    
    UILabel *text3Label = [[UILabel alloc]init];
    [text3Label setCLFrame:CGRectMake((text2Label.CLRight + 10), (text2Label.CLTop + (text2Label.CLHeight-20)/2.0), 120, 20)];
    [text3Label setNumberOfLines:0];
    [text3Label setFont:CLFont(12)];
    [text3Label setText:@"我在green的水平居中"];
    [text3Label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:text3Label];
    
    
    NSString *text4 = @"文字高度计算   我们日常用的宽带速度计量，比如5M宽带，完整是5Mbps, 即5M bit per second. 所以对应的下载速度是 5*1024 K bit per second = 5*1024/8 K byte per second = 640KB/s，当然，这个是理想速度。";
    UIFont *font4 = CLFont(12);
    // 计算高度
    CGFloat text4Width = 180;
    CGFloat text4Height = CLTextHeight(text4, CLFont(12), text4Width);
    
    UILabel *text4Label = [[UILabel alloc]init];
    [text4Label setCLFrame:CGRectMake(textLabel.CLLeft, (text2Label.CLBottom + 10), text4Width, text4Height)];
    [text4Label setNumberOfLines:0];
    [text4Label setFont:font4];
    [text4Label setText:text4];
    [text4Label setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:text4Label];
    
    NSString *text5 = @"文字宽度度计算";
    UIFont *font5 = CLFont(16);

    UILabel *text5Label = [[UILabel alloc]init];
    text5Label.CLFrame = CGRectMake(text4Label.CLRight, text4Label.CLTop, 0, 20);
    [text5Label setNumberOfLines:0];
    [text5Label setFont:font5];
    [text5Label setText:text5];
    [text5Label setTextColor:[UIColor whiteColor]];
    [text5Label setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:text5Label];
    
    // 计算宽度
    CGFloat text5Width = CLTextWidth(text5, font5);
    NSLog(@"text5Width:%f",text5Width);
    [text5Label setCLWidth:text5Width];
    
    
    
    NSString *text6 = @"绿色大小垂直居中倾斜下划线(黑)删除线(红)";
    
    UILabel *text6Label = [[UILabel alloc]init];
    [text6Label setCLFrame:CGRectMake(0, text4Label.CLBottom + 20, CLBaseWidth, 30)];
    [text6Label setBackgroundColor:[UIColor grayColor]];
    [text6Label setTextAlignment:(NSTextAlignmentCenter)];
    [text6Label setFont:CLFont(14)];
    [text6Label setBackgroundColor:[UIColor clearColor]];
    
    // TODO location&length写死
    NSMutableAttributedString *text6Attr = [[NSMutableAttributedString alloc]initWithString:text6];
    // 绿色
    [text6Attr addAttribute: NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(0, 2)];
    // 大
    [text6Attr addAttribute: NSFontAttributeName value:CLFont(30) range:NSMakeRange(2, 1)];
    // 小
    [text6Attr addAttribute: NSFontAttributeName value:CLFont(10) range:NSMakeRange(3, 1)];
    // 垂直居中
    [text6Attr addAttribute: NSBaselineOffsetAttributeName value:@(CLSize(5.0)) range: NSMakeRange(4, 4)];
    // 倾斜
    [text6Attr addAttribute: NSObliquenessAttributeName value:@(0.3) range:NSMakeRange(8, 2)];
    // 下划线(黑)
    [text6Attr addAttributes: @{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),NSUnderlineColorAttributeName:[UIColor blackColor]} range:NSMakeRange(10, 6)];
    // 删除线(红)
    [text6Attr addAttributes: @{NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle),NSStrikethroughColorAttributeName:[UIColor redColor]} range:NSMakeRange(16, 6)];

    
    [text6Label setAttributedText:text6Attr];
    [text6Label.layer setBorderWidth:0.5];
    [text6Label.layer setBorderColor:[UIColor redColor].CGColor];
    [self.view addSubview:text6Label];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
