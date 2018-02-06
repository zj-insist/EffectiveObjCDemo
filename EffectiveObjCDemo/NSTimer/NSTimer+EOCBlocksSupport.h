//
//  NSTimer+EOCBlocksSupport.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/6.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (EOCBlocksSupport)

+ (NSTimer *)eoc_secheduleTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)(void))block repeats:(BOOL)repeats;

@end
