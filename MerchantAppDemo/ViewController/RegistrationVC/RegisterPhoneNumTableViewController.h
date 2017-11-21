//
//  RegisterPhoneNumTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"
#import "BusinessProfileTableViewController.h"

@interface RegisterPhoneNumTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIButton *dialingCode;
@property (weak, nonatomic) IBOutlet UITextField *userPhoneNum;
@property (weak, nonatomic) IBOutlet UITextField *verifyCode;
@property (weak, nonatomic) IBOutlet UIButton *sendSMS;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;
@property (weak, nonatomic) IBOutlet UIButton *viewPassword;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *nextButton;

@end
