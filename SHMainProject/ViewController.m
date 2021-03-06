//
//  ViewController.m
//  SHMainProject
//
//  Created by mac on 2017/2/16.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"
#import "SHProtocolManager.h"
#import "GoodsDetailController.h"

#import "TAManager.h"
#import "TAManager+GoodsDetailAction.h"

@interface ViewController ()

- (IBAction)checkDetail:(id)sender;

- (IBAction)targetActionDetail:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    
}


- (IBAction)checkDetail:(id)sender {
    
    id <GoodsDetailServiceProtocol> provide = [SHProtocolManager serviceProvideForProtocol:@protocol(GoodsDetailServiceProtocol)];
    NSString *goodsId = @"89";
    NSString *goodsName = @"绿茶";
    UIViewController *detailVc = [provide goodsDetailControllerWithGoodsId:goodsId andName:goodsName complete:^{
        NSLog(@" 购买商品： %@ ， Id：%@ ",goodsName,goodsId);
    }];
    
   [self.navigationController pushViewController:detailVc animated:YES];
}

- (IBAction)targetActionDetail:(id)sender {
    NSString *goodsId = @"89";
    NSString *goodsName = @"绿茶";
    UIViewController *detailVc = [[TAManager shareInstance] goodsDetailControllerWithName:goodsName andGoodsId:goodsId complete:^{
        NSLog(@" TA 购买商品： %@ ， Id：%@ ",goodsName,goodsId);
    }];
    
    [self.navigationController pushViewController:detailVc animated:YES];
}
@end
