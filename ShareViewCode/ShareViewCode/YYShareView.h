//
//  YYShareView.h
//  ShareViewCode
//
//  Created by YY on 16/11/24.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 代理设计模式 */

/** 第一步 设置代理协议 */

@protocol YYShareViewDelegate <NSObject>

/** 第二步 设置代理协议方法 */

- (void)shareToQQ;

- (void)shareToWX;

- (void)shareToSina;

- (void)shareDict:(NSMutableDictionary *)dictM;

@end

@interface YYShareView : UIView

/** 第三步  设置 weak （防止循环引用）属性的 id 类型的 遵守自 代理协议的属性 delegate */

@property (nonatomic, weak) id <YYShareViewDelegate> delegate;

@end
