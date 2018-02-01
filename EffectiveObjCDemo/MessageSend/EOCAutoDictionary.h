//
//  EOCAutoDictionary.h
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCAutoDictionary : NSObject
@property(nonatomic, strong) NSData *data;
@property(nonatomic, copy) NSString *string;
@property(nonatomic, strong) NSNumber *number;
@property(nonatomic, strong) id object;

@end
