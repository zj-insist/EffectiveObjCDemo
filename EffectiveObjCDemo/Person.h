//
//  Person.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic, copy) NSString *firstName;
@property(nonatomic, copy) NSString *lastName;
@property(nonatomic, assign) NSInteger age;
@end
