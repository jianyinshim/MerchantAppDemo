//
//  ShopDetailTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"

@interface ShopDetailTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *shopIcon;
@property (weak, nonatomic) IBOutlet UIImageView *shopImage;
@property (weak, nonatomic) IBOutlet UITextField *shopName;
@property (weak, nonatomic) IBOutlet UITextField *shopCategory;
@property (weak, nonatomic) IBOutlet UIImageView *shopLocation;
@property (weak, nonatomic) IBOutlet UITextField *shopArea;
@property (weak, nonatomic) IBOutlet UITextField *shopAddress;
@property (weak, nonatomic) IBOutlet UITextField *shopPhoneNum;
@property (weak, nonatomic) IBOutlet UITextField *shopDescription;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@end
