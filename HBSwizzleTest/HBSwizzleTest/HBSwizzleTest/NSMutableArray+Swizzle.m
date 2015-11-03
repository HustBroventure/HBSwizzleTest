//
//  NSMutableArray+Swizzle.m
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "NSMutableArray+Swizzle.h"

@implementation NSMutableArray (Swizzle)

-(void)safeAddObject:(id)anObject
{
    if (anObject == nil) {
        anObject = [NSNull null];
    }
    [self safeAddObject:anObject];
}

- (id)myLastObject
{
    id ret = [self myLastObject];
    NSLog(@"**********  myLastObject *********** ");
    return ret;
}
@end
