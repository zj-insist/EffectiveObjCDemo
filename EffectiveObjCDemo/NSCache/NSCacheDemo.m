//
//  NSCacheDemo.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/6.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "NSCacheDemo.h"

@interface NSCacheDemo()
@property(nonatomic, strong) NSCache *cache;
@end

@implementation NSCacheDemo

- (instancetype)init {
    self = [super init];
    if (self) {
        _cache.countLimit = 100;
        _cache.totalCostLimit = 5 * 1024 * 1024;
    }
    return self;
}

- (void)downloadDataFromUrl:(NSURL *)url {
    NSPurgeableData *data = [_cache objectForKey:url];
    if (data) {
        [data beginContentAccess];
        [self useData:data];
        [data endContentAccess];
    } else {
        //下载操作，在回调中设置data到 cache
        NSPurgeableData *purgeData = [NSPurgeableData dataWithData:data];
        
        //在数据的长度容易计算时设置cost
        [_cache setObject:purgeData forKey:url cost:purgeData.length];
        //不容易计算调用以下方法
        [_cache setObject:purgeData forKey:url];
        
        [purgeData endContentAccess];
    }
}

- (void)useData:(NSData *)data {
    NSLog(@"%s",__func__);
}

@end
