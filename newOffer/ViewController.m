//
//  ViewController.m
//  newOffer
//
//  Created by 徐金辉 on 2018/1/23.
//  Copyright © 2018年 徐金辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *icon = [UIImage imageNamed:@"images/sm_vedio_banner.jpg"];
    CGFloat icon_w = self.view.bounds.size.width;
    UIImageView *iconView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, icon_w, 300)];
    CGFloat icon_h =  icon_w/icon.size.width * icon.size.height;
//    iconView.frame = CGRectMake(0, 0, icon_w, icon_h);
//    [iconView  sizeToFit];

    iconView.image = icon;
    [self.view addSubview:iconView];
    iconView.backgroundColor = [UIColor lightGrayColor];
    iconView.contentMode =  UIViewContentModeScaleAspectFill;
    
    
  
    UIButton *sender = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    [sender  setTitle:@"submit" forState:UIControlStateNormal];
    sender.backgroundColor = [UIColor redColor];
    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:sender];
    sender.titleLabel.textAlignment = NSTextAlignmentCenter;
    sender.layer.masksToBounds = true;
    sender.layer.cornerRadius =  25;
    [sender addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
    
    
    

    
    
}


- (void)tap:(UIButton *)sender{
    
    NSLog(@">>>>>>>>>>%@",sender.currentTitle);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
