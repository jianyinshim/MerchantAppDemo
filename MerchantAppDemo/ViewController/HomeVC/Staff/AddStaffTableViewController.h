//
//  AddStaffTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"
#import "StaffProfileTableViewController.h"

@interface AddStaffTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneNumText;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@end
