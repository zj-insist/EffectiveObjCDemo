//
//  PracticeClass.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "PracticeClass.h"
#import "NSTimer+EOCBlocksSupport.h"

@interface PracticeClass()

@property(nonatomic, strong) NSTimer *timer;

@end

@implementation PracticeClass

- (void)dealloc {
    [_timer invalidate];
}

- (void)stopTimer {
    [_timer invalidate];
    _timer = nil;
}

- (void)starTimer {
    __weak __typeof(self)weakSelf = self;
    _timer = [NSTimer eoc_secheduleTimerWithTimeInterval:5 block:^{
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        [strongSelf doSomething];
    } repeats:YES];
}

- (void)doSomething {
    NSLog(@"%s",__func__);
}

@end
