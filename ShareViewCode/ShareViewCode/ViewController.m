//
//  ViewController.m
//  ShareViewCode
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "ViewController.h"

/** 代理设计模式第六步  遵守代理协议 */

@interface ViewController ()<YYShareViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  =  [UIColor whiteColor];
    [self initUI];
}

- (void)initUI {
    
    YYShareView *viewShare = [[YYShareView alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height*0.3)];
    /** 代理设计模式第五步  设置代理 */

    [viewShare setDelegate:self];
    
    [self.view addSubview:viewShare];
}

#pragma mark - YYShareViewDelegate  代理设计模式第七步  实现代理协议方法

- (void)shareToSina {
    NSLog(@"shareToSina");
}

- (void)shareToWX {
    NSLog(@"shareToWX");

}

- (void)shareToQQ {
    NSLog(@"shareToQQ");

}

- (void)shareDict:(NSMutableDictionary *)dictM {
    NSLog(@"dictM%@",dictM);

}


@end
