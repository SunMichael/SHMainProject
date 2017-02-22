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

- (void)performTarget:(NSString *)targetName action:(NSString *)actionName infors:(NSDictionary *)infoDic cacheTarget:(BOOL)cache{
    
    NSString *targetClassName = [[NSString alloc] initWithFormat:@"Target_%@",targetName];
    NSString *actionString = [[NSString alloc] initWithFormat:@"Action_%@",actionName];
    
    id target = self.allCacheTarget[targetName];
    if (!target) {
        target = [[NSClassFromString(targetClassName) alloc] init];
    }
    SEL action = NSSelectorFromString(actionString);
    
    if (target == nil) {
        return;
    }
    
    if ([target respondsToSelector:action]) {
        [target performSelector:action withObject:infoDic afterDelay:0.f];
    }else{
        NSLog(@" ACTION NOT FOUND");
    }
    
    if (cache) {
        [self.allCacheTarget setObject:target forKey:targetName];
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
