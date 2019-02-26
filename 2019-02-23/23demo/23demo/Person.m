//
//  Person.m
//  23demo
//
//  Created by mac on 2019/2/23.
//  Copyright © 2019 mac. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSString __weak *obj = @"Hello zhi";
        [self haha:&obj];
    }
    return self;
}
- (void)haha:(NSString * __weak *)a
{
    NSLog(@"%@",*a);
}

@end
