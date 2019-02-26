//
//  main.m
//  21demo
//
//  Created by mac on 2019/2/21.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        /*
         使用__unsafe_unretained的修饰符时，赋值给__strong确保存在
         否则会奔溃
         */
        
        /*
         __autoreleasing
         自动释放？
         ARC下
         @autoreleasepool{
         
         }
         __autoreleasing
         
         等价
         NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
         
         [pool drain];
         
         [obj autorelease];
         
        
         */
        
    }
    return 0;
}
