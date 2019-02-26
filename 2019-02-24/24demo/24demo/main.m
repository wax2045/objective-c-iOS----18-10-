//
//  main.m
//  24demo
//
//  Created by mac on 2019/2/24.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        /*
         保证初始化为nil的修饰符
         __stong __weak __autoreleasing
         
         不保证的有
         __unsafe_unretained
         
         id *obj 默认为__autoreleasing修饰符
         __strong保证id修饰的为nil
         但不保证id *类型为nil
         
         
         
         */
        
//        int __unsafe_unretained a[100];
        
//        for (int i = 0; i < 100 ; i++) {
//            printf("%d\n",a[i]);
//        }
        
        
        
    }
    return 0;
}
