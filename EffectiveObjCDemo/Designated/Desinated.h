//
//  Desinated.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/2/1.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QSRectangle : NSObject

@property(nonatomic, assign, readonly) CGFloat width;
@property(nonatomic, assign, readonly) CGFloat height;

@end



@interface QSSquare : QSRectangle

@end
