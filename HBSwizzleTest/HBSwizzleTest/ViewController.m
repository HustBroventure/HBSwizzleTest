//
//  ViewController.m
//  HBSwizzleTest
//
//  Created by wangfeng on 15/11/3.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "ViewController.h"
#import "SwizzleManager.h"
#import "NSMutableArray+Swizzle.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [SwizzleManager setUp];

    Method ori_Method =  class_getInstanceMethod([NSArray class], @selector(lastObject));
    Method my_Method = class_getInstanceMethod([NSArray class], @selector(myLastObject));
    method_exchangeImplementations(ori_Method, my_Method);

    NSArray *array = @[@"0",@"1",@"2",@"3"];
    NSString *string = [array lastObject];
    NSLog(@"TEST RESULT : %@",string);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    Method ori_Method =  class_getInstanceMethod([NSMutableArray class], @selector(addObject:));
    Method my_Method = class_getInstanceMethod([NSMutableArray class], @selector(safeAddObject:));
    method_exchangeImplementations(ori_Method, my_Method);

    NSMutableArray* data = [NSMutableArray array];
    [data addObject:nil];
    NSLog(@"%@",data);
}
@end
