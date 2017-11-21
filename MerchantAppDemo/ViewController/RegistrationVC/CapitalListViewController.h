//
//  CapitalListViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 11/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryObject.h"
#import "CapitalListTableViewCell.h"

@interface CapitalListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *capitalTableView;
@property (strong, nonatomic) NSMutableArray *capitalList;
@property (strong, nonatomic) CountryObject *countryObject;

@end
