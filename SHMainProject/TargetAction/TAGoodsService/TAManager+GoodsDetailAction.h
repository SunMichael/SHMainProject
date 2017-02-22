//
//  TAManager+GoodsDetailAction.h
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "TAManager.h"
#import <UIKit/UIKit.h>

@interface TAManager (GoodsDetailAction)

- (UIViewController *)goodsDetailControllerWithName:(NSString *)goodsName andGoodsId:(NSString *)goodsId complete:(dispatch_block_t)complete;

@end
