//
//  ShopQrCodeViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 19/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShopObject.h"
#import <ZXingObjC.h>

@interface ShopQrCodeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *qrCodeLabe;
@property (weak, nonatomic) IBOutlet UIImageView *qrCodeImage;
@property (weak, nonatomic) IBOutlet UIImageView *shopLogo;

@property (strong, nonatomic) ShopObject *shopObject;

@end
