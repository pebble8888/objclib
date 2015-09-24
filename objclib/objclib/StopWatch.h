//
//  StopWatch.h
//  objclib
//
//  Created by pebble8888 on 2015/09/24.
//  Copyright (c) 2015年 pebble8888. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StopWatch : NSObject
- (void)start;
- (void)stop;
- (long)microseconds;
- (NSString*)description;
@end
