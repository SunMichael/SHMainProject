//
//  GoodsDetailController.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "GoodsDetailController.h"

@interface GoodsDetailController ()

@property (nonatomic ,strong) UIButton *buyBtn;
@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, copy) NSString *goodsName;
@property (nonatomic ,copy) dispatch_block_t completeBlock;
@end

@implementation GoodsDetailController

-(instancetype)initWithGoodsId:(NSString *)goodsId andName:(NSString *)name complete:(dispatch_block_t)complete{
    self = [super init];
    if (self) {
        _goodsId = goodsId;
        _goodsName = name;
        _completeBlock = [complete copy];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:[self buyButton]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)clickedBuyButton{
    _completeBlock();
}

- (UIButton *)buyButton{
    if (!_buyBtn) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, self.view.frame.size.height -50.0f, self.view.frame.size.width, 50.0f);
        [btn setTitle:@"点击购买" forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor orangeColor]];
        [btn addTarget:self action:@selector(clickedBuyButton) forControlEvents:UIControlEventTouchUpInside];
        _buyBtn = btn;
    }
    return _buyBtn;
    
}

@end
