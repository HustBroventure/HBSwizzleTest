//
//  NSMutableArray+Swizzle.h
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Swizzle)

-(void)safeAddObject:(id)anObject;
- (id)myLastObject;

@end
