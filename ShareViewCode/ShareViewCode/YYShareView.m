//
//  YYShareView.m
//  ShareViewCode
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "YYShareView.h"

@implementation YYShareView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        int Num = 3;
        CGFloat X,Y,W,H;
        Y = 0;
        W = frame.size.width / Num;
        H = frame.size.height;
        for (int i = 0; i < Num; i ++) {
            X = 0 + i * W;
            UIButton *button = [[UIButton alloc]init];
            [button setBackgroundColor:[UIColor yellowColor]];
            [button setTitle:[NSString stringWithFormat:@"SHARE TO %d",i] forState:UIControlStateNormal];
            button.titleLabel.font = [UIFont systemFontOfSize:17];
            [button setTag:i];
            [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:button];
            [button setFrame:CGRectMake(X, Y, W , H)];
        }
    }
    return self;
}



- (void)buttonAction:(UIButton *)sender {
    if (sender.tag == 0) {
        /** 第四步 在需要调用的地方 判断delegeate 是否存在 并且响应协议方法 */
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToQQ)]) {
            
            /** 如果我的代理 存在并且响应我的代理方法 那么就让我的代理执行我的代理方法 （可以传递参数 亦可以不传递参数） */

            [self.delegate shareToQQ];
        }
        
        NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
        
        dictM[@"name"] = @"cyy";
        
        dictM[@"age"] = @18;
        
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareDict:)]) {
            
            /** 如果我的代理 存在并且响应我的代理方法 那么就让我的代理执行我的代理方法 （可以传递参数 亦可以不传递参数） */
            
            [self.delegate shareDict:dictM];
        }
        
    }
    if (sender.tag == 1) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToWX)]) {
            [self.delegate shareToWX];
        }

    }
    if (sender.tag == 2) {
        if (self.delegate && [self.delegate respondsToSelector:@selector(shareToSina)]) {
            [self.delegate shareToSina];
        }

    }
}


@end
