//
//  Animal.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject {
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name NS_DESIGNATED_INITIALIZER;

@end
