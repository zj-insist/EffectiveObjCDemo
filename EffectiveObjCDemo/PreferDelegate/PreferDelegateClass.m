//
//  PreferDelegateClass.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "PreferDelegateClass.h"

@interface PreferDelegateClass()
{
    struct {
        unsigned int methodA : 1;
        unsigned int methodB : 1;
        unsigned int methodC : 1;
    } _delegateFlags;
}
@end

@implementation PreferDelegateClass


- (void)setDelegate:(id<PreferDelegate>)delegate {
    _delegate = delegate;
    
    //OSX 下没有respondsToSelector方法
//    _delegateFlags.methodA = [delegate respondsToSelector:@selector(delegateMethodA)];
//    _delegateFlags.methodB = [delegate respondsToSelector:@selector(delegateMethodB)];
//    _delegateFlags.methodC = [delegate respondsToSelector:@selector(delegateMethodC)];
}

- (void)callMethodA {
    if (_delegateFlags.methodA) {
        [self.delegate delegateMethodA];
    }
}

@end
