//
//  Mammal.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Mammal.h"

@implementation Mammal

- (instancetype)initWithLegs:(NSInteger)numberOfLegs {
    self = [self initWithName:@"Mammal"];
    if (self) {
        _numberOfLegs = numberOfLegs;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name andLegs:(NSInteger)numberOfLegs {
    self = [super initWithName:name];
    if (self) {
        _numberOfLegs = numberOfLegs;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name andLegs:4];
}

@end
