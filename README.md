# CodeLayout-OC

### 纯代码布局

1、import "UIView+CodeLayout.h"

```Objective-C
UILabel *textLabel = [[UILabel alloc]initWithFrame:CLRectMake(7, 66, 361, 131)];
[textLabel setFont:CLFont(14)];
[textLabel setText:@"我是测试Banner@1342@#¥%，然而没有图片"];
[textLabel setBackgroundColor:[UIColor redColor]];
[self.view addSubview:textLabel];

```
