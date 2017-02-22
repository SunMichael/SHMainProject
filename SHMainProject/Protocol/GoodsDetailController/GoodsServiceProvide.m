//
//  GoodsServiceProvide.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "GoodsServiceProvide.h"
#import "SHProtocolManager.h"
#import "GoodsDetailController.h"

@interface GoodsServiceProvide () <GoodsDetailServiceProtocol>

@end

@implementation GoodsServiceProvide


/**
 提供协议的注册  并且在本类中实现
 */
+ (void)load{
    [SHProtocolManager registServiceProvide:[self new] forProtocol:@protocol(GoodsDetailServiceProtocol)];
}


/**
 detailController通过自定义的protocol和获取外部传递的参数，本类相当于一个中间过渡

 @param goodsId goodsId description
 @param goodsName goodsName description
 @return return value description
 */
- (UIViewController *)goodsDetailControllerWithGoodsId:(NSString *)goodsId andName:(NSString *)goodsName complete:(dispatch_block_t)complete{
    GoodsDetailController *detailVc = [[GoodsDetailController alloc] initWithGoodsId:goodsId andName:goodsName complete:complete];
    return detailVc;
}
@end
