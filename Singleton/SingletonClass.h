//
//  SingletonClass.h
//  Singleton
//
//  Created by zhang on 16/5/14.
//  Copyright (c) 2016年 zhang. All rights reserved.
//

#ifndef Singleton_SingletonClass_h
#define Singleton_SingletonClass_h

// 定义.h文件
#define SingletonClassH(name) + (instancetype)shared##name;

// 定义.m文件
#define SingletonClassM(name) \
static id _instance; \
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone { \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
\
+ (instancetype)shared##name { \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
} \
\
- (id)copyWithZone:(NSZone *)zone { \
return _instance; \
}

#endif
