//
//  AppDelegate.m
//  16-demo1
//
//  Created by mac on 2019/2/16.
//  Copyright © 2019 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "objc/runtime.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //alloc 类方法 自己生成并持有对象
    id obj = [[NSObject alloc]init];
    NSLog(@"%lu",(unsigned long)[obj retainCount]);

    [obj release];
    
//    NSLog(@"%lu",(unsigned long)[obj retainCount]);
    
    //取得非自己生成并持有的对象
    id obj2 = nil;
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    obj2 = [NSMutableArray array];
    [obj2 retain];

    //取得对象 但不持有 可以realease
    [obj2 release];
    //每次release都会对retainCount 减一
    
    //这里怎么持有了对象？？
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    //如果不加retainobj2取得了对象，但是不持有
    
    //取得对象存在，但自己不持有对象
    //关闭xcode ARC功能
    
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);
    NSLog(@"%lu",(unsigned long)[obj2 retainCount]);

    
//    objc_layout
    
 
    
    return YES;
}
@end
