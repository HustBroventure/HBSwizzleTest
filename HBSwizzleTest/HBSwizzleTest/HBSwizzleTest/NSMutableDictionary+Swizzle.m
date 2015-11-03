//
//  NSMutableDictionary+Swizzle.m
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "NSMutableDictionary+Swizzle.h"

@implementation NSMutableDictionary (Swizzle)

-(void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    if (anObject == nil) {
        anObject = [NSNull null];
    }
    [self safeSetObject:anObject forKey:aKey];
}

@end
