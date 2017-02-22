//
//  TAManager.h
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TAManager : NSObject

+ (TAManager *)shareInstance;

- (id)performTarget:(NSString *)targetName action:(NSString *)actionName infors:(NSDictionary *)infoDic cacheTarget:(BOOL)cache;

@end
