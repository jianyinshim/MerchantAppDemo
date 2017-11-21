//
//  HomeViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 13/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"

@interface HomeViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *verifyView;
@property (weak, nonatomic) IBOutlet UIButton *activateButton;

@property (weak, nonatomic) IBOutlet UILabel *todatTxnLabel;
@property (weak, nonatomic) IBOutlet UILabel *todayOrderLabel;

@property (weak, nonatomic) IBOutlet UIButton *companyButton;
@property (weak, nonatomic) IBOutlet UIButton *shopButton;
@property (weak, nonatomic) IBOutlet UIButton *walletButton;
@property (weak, nonatomic) IBOutlet UIButton *getAngpauButton;
@property (weak, nonatomic) IBOutlet UIButton *promotionButton;
@property (weak, nonatomic) IBOutlet UIButton *eStampButon;

@property (strong, nonatomic) NSString *companyName;

@end
