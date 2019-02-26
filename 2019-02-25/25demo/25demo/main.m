//
//  main.m
//  25demo
//
//  Created by mac on 2019/2/25.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //按预期是做完的
        /*
         __strong修饰符在初始化对象的时候会至为nil
         
         分配内存推荐使用calloc 而不是 malloc
         因为malloc分配的内存区域没有被初始化为0
         
         动态数组需要手动释放？？
         
         */
        
//        NSArray *array = (NSArray __strong *)calloc(10, sizeof(id) * 10);
//        
//        NSLog(@"%@",array);
        
        /*
         ARC的实现
         
         
         */
        
    }
    return 0;
}
