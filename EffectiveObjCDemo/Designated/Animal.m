//
//  Animal.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    
    return self;
}

- (instancetype)init {
    return [self initWithName:@"Animal"];
}

@end
