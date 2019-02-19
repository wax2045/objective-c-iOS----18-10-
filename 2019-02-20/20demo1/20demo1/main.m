//
//  main.m
//  20demo1
//
//  Created by mac on 2019/2/20.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        /*
         两个对象内部变量相互引用导致循环引用
         对象本身引用对象本身也会循环引用
         __weak
         __weak有一个好处就是
         检查__weak是否为nil，可以判断赋值对象是否已经废弃了
         持有生成对象的弱引用
         
         __unsafe_unretained
         即不持有对象的强引用又不持有对象的弱引用
         
         内存管理就是变量 和 对象的关系
         变量超出作用域 就会失效
         对象没y有引用者就会释放
         
         __autoreleaseing
         
         
         
         */
        
        id __weak obj = [[NSObject alloc]init];
        
        id __strong obj2 = [[NSObject alloc]init];
        
        id __weak obj3 = obj2;
        
//        id __unsafe_unretained obj4 = nil;
        id __weak obj4 = nil;

        {
            id obj5 = [[NSObject alloc]init];
            obj4 = obj5;
        }
        //会闪退吗？？
        NSLog(@"%@",obj4);
        
        
    }
    return 0;
}
