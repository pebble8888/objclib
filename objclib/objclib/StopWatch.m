//
//  StopWatch.m
//  objclib
//
//  Created by pebble8888 on 2015/09/24.
//  Copyright (c) 2015年 pebble8888. All rights reserved.
//

#import "StopWatch.h"

@interface StopWatch ()
{
    NSDate* _start;
    long _elapsed_microseconds;
}
@end

@implementation StopWatch
- (id)init
{
    self = [super init];
    if (self) {
        [self start];
    }
    return self;
}

- (void)start
{
    _start = [NSDate date];
}

- (void)stop
{
    NSDate* now = [NSDate date]; 
    NSTimeInterval duration = [now timeIntervalSinceDate:_start];
    _elapsed_microseconds = lrint(duration * 1000000); 
}

- (long)microseconds
{
    return _elapsed_microseconds;
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"%ld us", _elapsed_microseconds];
}

@end
