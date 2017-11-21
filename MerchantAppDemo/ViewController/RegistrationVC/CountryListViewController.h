//
//  CountryListViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 11/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryListTableViewCell.h"
#import "GlobalMethod.h"
#import "CountryObject.h"
#import "CapitalListViewController.h"

@interface CountryListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *countryTableView;
@property (strong, nonatomic) NSMutableArray *countryList;
@property (strong, nonatomic) NSArray *sectionIndexList;
@property (strong, nonatomic) CountryObject *countryObject;

@end
