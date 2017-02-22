//
//  GoodsDetailTarget.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "GoodsDetailTarget.h"
#import "TAGoodsDetailController.h"
@implementation GoodsDetailTarget

-(UIViewController *)Action_GoodsDetailAction:(NSDictionary *)inforDic{
    TAGoodsDetailController *goodsDetailVc = [[TAGoodsDetailController alloc] init];
    goodsDetailVc.goodsId = inforDic[@"goodsId"];

    return goodsDetailVc;
}

@end
