//
//  Person.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Person.h"

@implementation Person

- (BOOL)isEqual:(id)object {
    if (self == object) return YES;
    if ([self class] != [object class]) return NO;
    
    Person *tempPerson = (Person *)object;
    if (tempPerson.firstName != _firstName) return NO;
    if (tempPerson.lastName != _lastName) return NO;
    if (tempPerson.age != _age) return NO;
    return YES;
}

- (NSUInteger)hash {
    return [_firstName hash] ^ [_lastName hash] ^ _age;
}

- (id)copyWithZone:(NSZone *)zone {
    Person *newPerson = [[self class] allocWithZone:zone];
    newPerson.lastName = [_lastName copy];
    newPerson.firstName = [_firstName copy];
    newPerson.age = _age;
    
    return newPerson;
}


@end
