//
//  Whale.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Mammal.h"

@interface Whale : Mammal {
    BOOL    _canSwim;
}

- (instancetype)initWhale NS_DESIGNATED_INITIALIZER;

@end
