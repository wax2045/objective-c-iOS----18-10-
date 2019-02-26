//
//  main.m
//  23demo
//
//  Created by mac on 2019/2/23.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
struct haha {  //tag struct haha
    int aaa;
    NSString *bbb;
    NSMutableArray *ccc;
}haha2;//变量列表
//结构图有两种方法创建 struct + tag  + 变量   variable-list 开始就定义好
//

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //150
        /*
         可以使用alloc/copy/new/mutableCopy方法取得非自己生成的对象并持有
         例如+(instance)array 方法
         内部已经调用了autoreleasaing
         在ARC下，系统内存管理，自动识别添加方法
         
         强引用也会被释放只要超出其作用域
         
         __weak修饰符必定要一次调用__autoreleasing
         是为了防止在访问对象的时候对象被释放了
         因为weak只是弱引用对象
         
         除了alloc/new/copy/mutableCopy等方法，返回值都会注册到autoreleaepool上
         
         类似于通过指针地址传值，也要遵循内存管理
         指针传值具有多返回值效果
         *号取值
         
         */
        
        //赋值时必须保证修饰符一致
        //id __autoreleasing *obj;
        //id *__autoreleasing *obj;
        //所有权必须一样
        //obj2默认是autoreleasing
        //obj1默认是strong
//        NSString * obj = nil;
//        NSString * __strong*obj2 = &obj;
//        //注意对象时自动变量
//
//        Person *p = [Person new];
        
        //init方法的要求非常高，必须要有返回值 必要要返回值的类型是id 或与类相关的 必须是持有关系不回调用自动变量
        
        //如果使用C语言库，必须要使用free释放留出的内存
        
        //id行不行
        
        
//        struct haha a;
//        a.aaa = 101;
//        a.bbb = @"Hello stuct";
//        a.ccc = @[];
//        NSLog(@"%@",a.bbb);
        //C语言上不使用object对象的变量，因为C语言没有内存管理
        
        //我一直以为打印或者调用对象就加加引用？？
        
//        id obj = [Person new];
//        //我觉得他打印的时候他是strong 不用引用了
//        NSLog(@"%@",obj);
//        //1
//        NSLog(@"%lu",(unsigned long)[obj retainCount]);
        
        //发生在objective-c和core foundation
        
        //__bridge_retain 与 retain类似
        //__bridge_transfer 与 release类似
        //CF 代表的是Core Foundation
        //CF也具有内存管理
        //CFBridgingRetain(id x) 和 CGBridgingRelease(CFTypeRef X)和__bridge_retain等价
        //CGBridgingRelease就是transfer的意思，释放老的赋值给新的
        //在转换的时候，如果不写明类型，默认强引用
        
        //都超出了作用域 还可以不释放？？
        {
            CFMutableArrayRef mutableRef = CFArrayCreateMutable(kCFAllocatorDefault, 0, NULL);
            
            //奇怪 (__bridge id)没有引用加1
            //(__bridge_retain) mutableRef； ARC用
            id obj = CFRetain(mutableRef);
            
            
            printf("%ld",(long)CFGetRetainCount(mutableRef));
            
            //这里要打印一下
            NSLog(@"%@",obj);
            
            //ARC 下copy修饰符的对象是在NSCopying接口的copyWithZoom
        }
        
    }
    return 0;
}


