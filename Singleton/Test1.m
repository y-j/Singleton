//
//  Test1.m
//  Singleton
//
//  Created by zhang on 16/5/14.
//  Copyright (c) 2016年 zhang. All rights reserved.
//

#import "Test1.h"

@implementation Test1

static Test1 *_test1;

+ (instancetype)sharedTest1 {
    @synchronized(self) {
        if (_test1 == nil) {
            _test1 = [[self alloc] init];
        }
    }
    return _test1;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    @synchronized(self) {
        if (_test1 == nil) {
            _test1 = [super allocWithZone:zone];
        }
    }
    return _test1;
}

- (id)copyWithZone:(NSZone *)zone {
    return _test1;
}

@end
