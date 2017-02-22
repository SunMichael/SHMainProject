//
//  SHProtocolManager.h
//  SHProtocolManager
//
//  Created by mac on 2017/2/15.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SHProtocolManager : NSObject


+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;


@end
