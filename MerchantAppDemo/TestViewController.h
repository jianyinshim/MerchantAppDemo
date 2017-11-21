//
//  TestViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestTableViewCell.h"

@interface TestViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UISegmentedControl *staffControll;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addStaff;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *array;

@end
