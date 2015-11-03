//
//  SwizzleManager.m
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "SwizzleManager.h"
#import <objc/runtime.h>
#import "NSMutableArray+Swizzle.h"
#import "NSMutableDictionary+Swizzle.h"
@implementation SwizzleManager
+(void)setUp
{
    [SwizzleManager setUpArray];
    [SwizzleManager setUpDictionary];

}

+(void)setUpArray
{
    Method ori_Method =  class_getInstanceMethod([NSMutableArray class], @selector(addObject:));
    Method my_Method = class_getInstanceMethod([NSMutableArray class], @selector(safeAddObject:));
    method_exchangeImplementations(ori_Method, my_Method);
}
+(void)setUpDictionary
{
    Method ori_Method =  class_getInstanceMethod([NSMutableDictionary class], @selector(setObject:forKey:));
    Method my_Method = class_getInstanceMethod([NSMutableDictionary class], @selector(safeSetObject:forKey:));
    method_exchangeImplementations(ori_Method, my_Method);
}

@end
