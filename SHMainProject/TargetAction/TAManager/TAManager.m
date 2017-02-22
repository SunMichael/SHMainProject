//
//  TAManager.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "TAManager.h"

@interface TAManager ()

@property (nonatomic ,strong) NSMutableDictionary *allCacheTarget;

@end

@implementation TAManager

+ (TAManager *)shareInstance{
    static dispatch_once_t onceToken;
    static TAManager *manager ;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName infors:(NSDictionary *)infoDic cacheTarget:(BOOL)cache{
    
    NSString *targetClassName = [[NSString alloc] initWithFormat:@"%@Target",targetName];
    NSString *actionString = [[NSString alloc] initWithFormat:@"Action_%@:",actionName];
    
    id target = self.allCacheTarget[targetName];
    if (!target) {
        target = [[NSClassFromString(targetClassName) alloc] init];
    }
    SEL action = NSSelectorFromString(actionString);
    
    if (target == nil) {
        return nil;
    }
    
    if (cache) {
        [self.allCacheTarget setObject:target forKey:targetName];
    }
    
    if ([target respondsToSelector:action]) {
        //方法执行的2种写法
//        id obj = [target performSelector:action withObject:infoDic];
//        return obj;
        
        IMP imp = [target methodForSelector:action];
        id (*function)(id, SEL, id) = (void *)imp;
        return function(target, action, infoDic);
        
    }else{
        NSLog(@" ACTION NOT FOUND");
        return nil;
    }
    
}

- (id)cacheTargetForName:(NSString *)name{
    return _allCacheTarget[name];
}

- (NSMutableDictionary *)allCacheTarget{
    if (!_allCacheTarget) {
        _allCacheTarget = [NSMutableDictionary dictionary];
    }
    return _allCacheTarget;
}

@end
