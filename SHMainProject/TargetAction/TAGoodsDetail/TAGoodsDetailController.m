//
//  TAGoodsDetailController.m
//  SHMainProject
//
//  Created by mac on 2017/2/22.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "TAGoodsDetailController.h"

@interface TAGoodsDetailController ()

@end

@implementation TAGoodsDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationItem.title = _goodsName;
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:[self buyButton]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

- (void)clickedBuyButton{
    if (_complete) {
        _complete();
    }
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
