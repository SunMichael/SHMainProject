//
//  TAManager+GoodsDetailAction.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "TAManager+GoodsDetailAction.h"
#import "TAGoodsDetailController.h"

@implementation TAManager (GoodsDetailAction)

-(UIViewController *)goodsDetailControllerWithName:(NSString *)goodsName andGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"goodsId"] = goodsId;
    params[@"goodsName"] = goodsName;
    params[@"block"] = complete;
    return [self performTarget:@"GoodsDetail" action:@"GoodsDetailAction" infors:params cacheTarget:YES];
}

@end
