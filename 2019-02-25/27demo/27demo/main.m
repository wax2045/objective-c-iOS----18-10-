//
//  main.m
//  27demo
//
//  Created by mac on 2019/2/27.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/message.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
       /*
        不解
        objc_autoreleaseReturnValue()
        objc_retainAutoreleasedReturnValue()
         */
        //xcode msg 取消检测
        //加方法和实例方法都一样要调用这个方法
        id obj = objc_msgSend([NSMutableArray class],@selector(array));
        objc_retainAutoreleasedReturnValue(obj);
        objc_release(obj);
        
        /*
         __weak魔法
         
         objc_storeWeak(&obj1,obj);
         obj对象的地址做为键值将obj1注册到weak列表
         
         
         
         */
        
        id obj1 = [NSObject new];
        objc_initWeak(&obj1,obj);
        objc_destroyWeak(&obj1);
        
        NSLog(@"%@",obj1);
        
        
    }
    return 0;
}
