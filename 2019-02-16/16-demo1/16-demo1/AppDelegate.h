//
//  AppDelegate.h
//  16-demo1
//
//  Created by mac on 2019/2/16.
//  Copyright © 2019 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end


/*
 专用名词解析
 ARC : Automatic Reference Counting 自动计数
 无需手工输入retain和release代码了
 
 自己生成的对象，自己所持有。
 非自己生成的对象，自己也能持有。
 不再需要自己持有的对象时释放。
 非自己持有的对象无法释放
 
 生成并持有对象 alloc/new/copy/mutableCopy
 持有对象 retain
 释放对象 release
 废弃对象 dealloc
 */
