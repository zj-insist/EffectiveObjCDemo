//
//  PreferDelegateClass.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PreferDelegate

@optional
- (void)delegateMethodA;
- (void)delegateMethodB;
- (void)delegateMethodC;

@end

@interface PreferDelegateClass : NSObject

@property(nonatomic, weak) id<PreferDelegate> delegate;

@end
