//
//  StaffViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 15/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StaffTableViewCell.h"
#import "GlobalMethod.h"
#import "StaffObject.h"
#import "EditStaffProfileTableViewController.h"

@interface StaffViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UISegmentedControl *staffControl;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addStaffBarButton;
@property (weak, nonatomic) IBOutlet UITableView *staffTableView;
@property (weak, nonatomic) IBOutlet UIView *addStaffView;
@property (weak, nonatomic) IBOutlet UIButton *addStaffButton;
@property (weak, nonatomic) IBOutlet UILabel *addStaffLabel;

@property (strong, nonatomic) NSMutableArray *staffList;
@property (strong, nonatomic) StaffObject *staffObject;
@property (strong, nonatomic) NSArray *staffArray;
@end
