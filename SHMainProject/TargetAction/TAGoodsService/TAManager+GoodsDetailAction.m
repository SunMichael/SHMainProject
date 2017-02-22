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
    TAGoodsDetailController *goodsDetailVc = [[TAGoodsDetailController alloc] init];
    goodsDetailVc.goodsId = goodsId;
    goodsDetailVc.goodsName = goodsName;
    
    return [self performTarget:@"GoodsDetailTarget" action:@"GoodsDetailAction" infors:nil cacheTarget:YES];
}

@end
