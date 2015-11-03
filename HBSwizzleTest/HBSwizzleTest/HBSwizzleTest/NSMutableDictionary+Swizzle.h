//
//  NSMutableDictionary+Swizzle.h
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (Swizzle)
-(void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
