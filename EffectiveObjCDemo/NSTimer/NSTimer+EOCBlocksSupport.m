//
//  NSTimer+EOCBlocksSupport.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/6.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "NSTimer+EOCBlocksSupport.h"

@implementation NSTimer (EOCBlocksSupport)

+ (NSTimer *)eoc_secheduleTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(void))block repeats:(BOOL)repeats {
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(eco_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+ (void)eco_blockInvoke:(NSTimer *)timer {
    void (^block)(void) = timer.userInfo;
    if (block) {
        block();
    }
}

@end
