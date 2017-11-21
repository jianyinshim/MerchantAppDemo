//
//  ShopQrCodeViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 19/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "ShopQrCodeViewController.h"

@interface ShopQrCodeViewController ()

@end

@implementation ShopQrCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *qrString = [NSString stringWithFormat:@"CompId: %@ ShopName: %@ ShopID: %@", _shopObject.compId, _shopObject.shopName, _shopObject.shopId];
//    NSString *qrString = @"CompId: JY Company ShopName: JY Shop ShopID: 123456";
    
    _qrCodeLabe.text = qrString;
    _qrCodeImage.image = [self createCodeWithString:qrString withCodeFormat:kBarcodeFormatQRCode];
}

- (UIImage*)createCodeWithString:(NSString*)str withCodeFormat:(ZXBarcodeFormat)format {
    ZXMultiFormatWriter *writer = [[ZXMultiFormatWriter alloc] init];
    ZXBitMatrix *result = [writer encode:str
                                  format:format
                                   width:_qrCodeImage.bounds.size.width
                                  height:_qrCodeImage.bounds.size.height
                                   error:nil];
    
    if (result) {
        ZXImage *image = [ZXImage imageWithMatrix:result];
        return [UIImage imageWithCGImage:image.cgimage];
    } else {
        return nil;
    }
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
