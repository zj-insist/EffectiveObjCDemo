//
//  GCDDemo.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/6.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "GCDDemo.h"

@implementation GCDDemo

///主队列
- (void)mainQueueTest {
    dispatch_queue_t mainQueue = dispatch_get_main_queue();

    dispatch_sync(mainQueue, ^{
        [self doSomething];
    });
    
    dispatch_async(mainQueue, ^{
        [self doSomething];
    });
}

///系统全局队列
- (void)globalQueueTest {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_sync(globalQueue, ^{
        [self doSomething];
    });
    
    dispatch_async(globalQueue, ^{
        [self doSomething];
    });
}

///创建的队列
- (void)noramlQueueTest {
    dispatch_queue_t noramlQueue = dispatch_queue_create("GCD", NULL);
    
    dispatch_sync(noramlQueue, ^{
        [self doSomething];
    });
    
    dispatch_async(noramlQueue, ^{
        [self doSomething];
    });
}

///barrier，用于线程同步
- (void)barrierTest {
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_barrier_sync(globalQueue, ^{
        [self doSomething];
    });
    
    dispatch_barrier_async(globalQueue, ^{
        [self doSomething];
    });
}

///after方法，用于延后执行
- (void)after {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self doSomething];
    });
}

///group
- (void)groupTest {
    
    dispatch_group_t group = dispatch_group_create();
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    //将任务放入线程和组，同一个组的任务全部执行完毕后可以使用dispatch_group_notify同步所有任务，函数并不关心组内的任务是同步还是异步
    dispatch_group_async(group, globalQueue, ^{
        [self doSomething];
    });
    
    dispatch_group_notify(group, globalQueue, ^{
        [self doSomething];
    });
    
    //用于在阻塞当前线程多久用于等待组中任务执行完成，DISPATCH_TIME_FOREVER表示等待直到任务全部执行完成
    dispatch_group_wait(group, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC));
    
    //相当于信号量机制，跟第一种方式类似，用于检测组中任务是否全部完成，之后使用dispatch_group_notify同步所有任务
    dispatch_group_enter(group);
    dispatch_async(globalQueue, ^{
        [self doSomething];
        dispatch_group_leave(group);
    });
}

- (void)applyTest {
    //可以更高效率的执行一个循环
    dispatch_apply(10, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(size_t index) {
        NSLog(@"%zd",index);
    });
}

- (void)onceTest {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self doSomething];
    });
    
    NSArray *a = @[];
    [a enumerateObjectsWithOptions:nil usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
    }];
}


- (void)doSomething {
    NSLog(@"%s",__func__);
}

@end
