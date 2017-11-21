//
//  EditStaffProfileTableViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"
#import "StaffObject.h"
#import "GenerateQRCodeViewController.h"

@interface EditStaffProfileTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *qrCodeBarButton;
@property (weak, nonatomic) IBOutlet UIImageView *mxLogo;
@property (weak, nonatomic) IBOutlet UILabel *mxId;
@property (weak, nonatomic) IBOutlet UILabel *mxUsername;

@property (weak, nonatomic) IBOutlet UILabel *staffName;
@property (weak, nonatomic) IBOutlet UILabel *phoneNum;
@property (weak, nonatomic) IBOutlet UILabel *shopPermission;
@property (weak, nonatomic) IBOutlet UILabel *staffPosition;
@property (weak, nonatomic) IBOutlet UILabel *staffStatus;
@property (weak, nonatomic) IBOutlet UILabel *createdBy;
@property (weak, nonatomic) IBOutlet UILabel *creationDate;
@property (weak, nonatomic) IBOutlet UILabel *lastModifiedBy;
@property (weak, nonatomic) IBOutlet UILabel *lastModifiedDate;

@property (strong, nonatomic) StaffObject *staffObject;
@property (strong, nonatomic) NSMutableArray *staffInfo;
@property (assign, nonatomic) NSInteger *indexPath;

@end
