//
//  GoodsDetailController.h
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
   GoodsDetailServiceProtocol 提供相关接口给外部使用
 */
@protocol GoodsDetailServiceProtocol <NSObject>

- (UIViewController *)goodsDetailControllerWithGoodsId:(NSString *)goodsId andName:(NSString *)goodsName complete:(dispatch_block_t)complete;

@end


@interface GoodsDetailController : UIViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId andName:(NSString *)name complete:(dispatch_block_t)complete;

@end
