//
//  GenerateQRCodeViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StaffObject.h"
#import <ZXingObjC.h>

@interface GenerateQRCodeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *qrCodeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *qrCodeImage;
@property (weak, nonatomic) IBOutlet UIImageView *companyLogo;

@property (strong, nonatomic) StaffObject *staffObjectNew;

@end
