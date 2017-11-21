//
//  BusinessProfileTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"

@interface BusinessProfileTableViewController : UITableViewController

@property (strong, nonatomic) NSString *userRegisterCountryCode;
@property (strong, nonatomic) NSString *userRegisterPhoneNumber;
@property (strong, nonatomic) NSString *userRegisterPassword;

@property (weak, nonatomic) IBOutlet UITextField *registerName;
@property (weak, nonatomic) IBOutlet UITextField *tradingName;
@property (weak, nonatomic) IBOutlet UITextField *registerNumber;
@property (weak, nonatomic) IBOutlet UIButton *companyType;
@property (weak, nonatomic) IBOutlet UILabel *companyArea;
@property (weak, nonatomic) IBOutlet UILabel *companyAddress;

@property (weak, nonatomic) IBOutlet UITextField *contactName;
@property (weak, nonatomic) IBOutlet UITextField *contactTelNumber;
@property (weak, nonatomic) IBOutlet UITextField *curAcquireBank;
@property (weak, nonatomic) IBOutlet UITextField *contactMobileNumber;
@property (weak, nonatomic) IBOutlet UITextField *contactFaxNumber;
@property (weak, nonatomic) IBOutlet UITextField *contactEmail;
@property (weak, nonatomic) IBOutlet UITextField *salesPerMonth;


@end
