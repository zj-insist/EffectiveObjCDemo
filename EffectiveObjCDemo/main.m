//
//  main.m
//  EffectiveObjCDemo
//
//  Created by ZJ-Jie on 2018/1/31.
//  Copyright © 2018年 Jie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Whale.h"
#import "GCDDemo.h"

void designatedTest() {
    //        NSLog(@"Hello, World!");
    //        Whale *whale1 = [[Whale alloc] initWhale];                 // 1
    //        NSLog(@"whale1 %@", whale1);
    
    //        Whale *whale2 = [[Whale alloc] initWithName:@"Whale"];     // 2
    //        NSLog(@"whale2 %@", whale2);
    
    //        Whale *whale3 = [[Whale alloc] init];                      // 3
    //        NSLog(@"whale3 %@", whale3);
    //
    Whale *whale4 = [[Whale alloc] initWithLegs:4];            // 4
    NSLog(@"whale4 %@", whale4);
    //
    //        Whale *whale5 = [[Whale alloc] initWithName:@"Whale" andLegs:8];    // 5
    //        NSLog(@"whale5 %@", whale5);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
//        designatedTest();
        GCDDemo *demo = [GCDDemo new];
        [demo applyTest];
    }
    return 0;
}
