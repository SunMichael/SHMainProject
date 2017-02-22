//
//  SHProtocolManager.m
//  SHProtocolManager
//
//  Created by mac on 2017/2/15.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "SHProtocolManager.h"

@interface SHProtocolManager ()

@property (nonatomic ,strong) NSMutableDictionary *serviceProvideDic;

@end

@implementation SHProtocolManager


+ (SHProtocolManager *)shareInstance{
    static dispatch_once_t onceToken;
    static SHProtocolManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _serviceProvideDic = [[NSMutableDictionary alloc] init];
    }
    return self;
}


+(void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol{
   
    if (protocol == nil || provide == nil) {
        return;
    }
    [[self shareInstance].serviceProvideDic setObject:provide forKey:NSStringFromProtocol(protocol)];
}


+(id)serviceProvideForProtocol:(Protocol *)protocol{
    return [[self shareInstance].serviceProvideDic objectForKey:NSStringFromProtocol(protocol)];
}

@end
