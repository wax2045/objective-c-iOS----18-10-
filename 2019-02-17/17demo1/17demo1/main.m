//
//  main.m
//  17demo1
//
//  Created by mac on 2019/2/17.
//  Copyright © 2019 mac. All rights reserved.
//
//声明 有地方创建
extern void _objc_autoreleasePoolPrint();




#import <Foundation/Foundation.h>

id a;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        id obj = [NSObject new];
//        NSAutoreleasePool *pool = [NSAutoreleasePool new];
        
        
        
        _objc_autoreleasePoolPrint();
        
//        [pool drain];
        
        /*
         autoreleease 自动释放
         
         不一定非得创建NSRunloop也会创建Pool
         定制作用域
         生成并持有NSAutoreleasePool对象
         调用autorelease
         废弃NSAutoreleasePool
         
         NSAutoreleasePool不释放对象也不能释放
         调用autorelease实际是调用NSAutoreleasePool的addObject：
         
         IMP caching
         初始化时对其结果值进行缓存
         id autorelease_class = [NSAutoreleasePool class];
         SEL autorelease_sel = @selector(addObject:);
         IMP autorelease_imp = [autorelease_class methodForSelector:autorelease_sel];
         
         对比
         [NSAutoreleasePool addObject:self];
         
         -(void)drain;
         对pool对象数组里的对象调release
         
         快2倍
         
         流程
         调用NSObject的autorelease，该对象追加到正在使用的NSAutoreleasePool对象的数组中
         
         内存管理方式
         自己持有的才能释放
         
         ARC追加的所有权声明
         id类型和对象类型
         __strong
         __weak
         __unsafe_unretained
         __autoreleaseing
         
         
         __strong默认所有权修饰符
         例如 id obj = [[NSObject alloc] init];
         默认附加了所有权修饰符
         id __strong obj = [[NSObject alloc] init];
         
         
         
         
         类似于C语言的自动变量（局部变量）
         超出其作用域将被自动废弃
         
         
         
         
         
         
         */
        
        
        //这样赋值nil不是强引用吗，源对象不会被至nil吗
        id obj0 = [NSObject new];
        id obj1 = [NSObject new];
        id obj2 = nil;
        
        obj0 = obj1;
        
        obj2 = obj0;
        
        obj1 = nil;//obj0也会nil？
        
        //强引用关系来理解
        
        //循环引用
        
        
        
    }
    return 0;
}
