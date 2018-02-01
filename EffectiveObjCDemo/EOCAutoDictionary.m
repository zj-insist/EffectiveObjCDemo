//
//  EOCAutoDictionary.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

@interface EOCAutoDictionary()
@property(nonatomic, strong) NSMutableArray *store;
@end

@implementation EOCAutoDictionary

@dynamic string,data,object,number;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _store = [NSMutableArray array];
    }
    return self;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString *selectorStr = NSStringFromSelector(sel);
    if ([selectorStr hasPrefix:@"set"]) {
        class_addMethod(self, sel, (IMP)autoSetter, "v@:@");
    } else {
        class_addMethod(self, sel, (IMP)autoGetter, "@@:");
    }
    return YES;
}

void autoSetter(id self,SEL _cmd,id value) {
    EOCAutoDictionary *dic = (EOCAutoDictionary *)self;
    NSMutableArray *store = dic.store;
    
    NSString *selectorKey = NSStringFromSelector(_cmd);
    NSMutableString *key = [selectorKey mutableCopy];
    
    [key deleteCharactersInRange:NSMakeRange(key.length - 1, 1)];
    
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    NSString *lowerCaseFirstChar = [[key substringFromIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowerCaseFirstChar];
    if (value) {
        [store setValue:value forKey:key];
    } else {
        [store removeObject:key];
    }
}

id autoGetter(id self, SEL _cmd) {
    EOCAutoDictionary *dic = (EOCAutoDictionary *)self;
    NSMutableArray *store = dic.store;
    
    NSString *key = NSStringFromSelector(_cmd);
    return [store valueForKey:key];
}

@end
