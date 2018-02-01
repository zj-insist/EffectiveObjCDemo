//
//  Mammal.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Animal.h"

@interface Mammal : Animal {
    NSInteger   _numberOfLegs;
}

- (instancetype)initWithName:(NSString *)name andLegs:(NSInteger)numberOfLegs NS_DESIGNATED_INITIALIZER;

- (instancetype)initWithLegs:(NSInteger)numberOfLegs;

@end
