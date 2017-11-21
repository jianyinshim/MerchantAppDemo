//
//  StaffProfileTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"

@interface StaffProfileTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *staffName;
@property (weak, nonatomic) IBOutlet UITextField *staffPhoneNum;
@property (weak, nonatomic) IBOutlet UITextField *staffPosition;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@property (weak, nonatomic) IBOutlet UILabel *mxId;
@property (weak, nonatomic) IBOutlet UILabel *mxUsername;
@property (strong, nonatomic) NSString *phoneNum;

@end
