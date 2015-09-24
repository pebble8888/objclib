//
//  objclibtest.m
//  objclibtest
//
//  Created by pebble8888 on 2015/09/24.
//  Copyright (c) 2015年 pebble8888. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "StopWatch.h"

@interface objclibtest : XCTestCase

@end

@implementation objclibtest

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testExample {
    StopWatch* sw = [StopWatch new];
    sleep(1);
    [sw stop];
    
    NSLog(@"%ld", sw.microseconds );
    NSLog(@"%@", sw.description);
}

@end
