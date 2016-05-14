//
//  Test2.m
//  Singleton
//
//  Created by zhang on 16/5/14.
//  Copyright (c) 2016年 zhang. All rights reserved.
//

#import "Test2.h"

@implementation Test2

static Test2 *_test2;

+ (instancetype)sharedTest2 {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _test2 = [[self alloc] init];
    });
    return _test2;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _test2 = [super allocWithZone:zone];
    });
    return _test2;
}

- (id)copyWithZone:(NSZone *)zone {
    return _test2;
}

@end
