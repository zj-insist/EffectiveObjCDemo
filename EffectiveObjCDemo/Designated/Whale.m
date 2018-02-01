//
//  Whale.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Whale.h"

@implementation Whale

- (instancetype)initWhale {
    self = [super initWithName:@"Whale" andLegs:0];
    if (self) {
        _canSwim = YES;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name andLegs:(NSInteger)numberOfLegs {
    return [self initWhale];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Numberof Legs %zd, CanSwim %@", _name, _numberOfLegs, _canSwim ? @"YES" : @"NO"];
}

@end
