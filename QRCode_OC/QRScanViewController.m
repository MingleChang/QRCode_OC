//
//  QRScanViewController.m
//  QRCode_OC
//
//  Created by 常峻玮 on 16/1/6.
//  Copyright © 2016年 Mingle. All rights reserved.
//

#import "QRScanViewController.h"
#import "MCQRCode.h"
@import AVFoundation;

@interface QRScanViewController ()<AVCaptureMetadataOutputObjectsDelegate>
@property(nonatomic,strong)MCQRCode *qrView;
@end

@implementation QRScanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.qrView=[[MCQRCode alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.qrView];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.qrView setNeedsLayout];
    [self.qrView setNeedsDisplay];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
