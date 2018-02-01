//
//  Desinated.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import "Desinated.h"

@implementation QSRectangle

- (instancetype)initWithWidth:(CGFloat)width height:(CGFloat)height {
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

///default init
- (instancetype)init {
    return [self initWithWidth:10 height:5];
}



///throw exception
//- (instancetype)init {
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"只能使用 initWithWidth:height: 方法初始化" userInfo:nil];
//}


@end

@implementation QSSquare

- (instancetype)initWidthDimension:(CGFloat)dimension {
    return [super initWithWidth:dimension height:dimension];
}

///如果使用父类初始化方法会出现问题，此处就要重写父类初始化方法
- (instancetype)initWithWidth:(CGFloat)width height:(CGFloat)height {
    return [self initWidthDimension:MAX(width, height)];
}

///禁用父类初始化方法直接抛出异常便可
//- (instancetype)initWithWidth:(CGFloat)width height:(CGFloat)height {
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"只能使用 initWithWidth:height: 方法初始化" userInfo:nil];
//}

@end
