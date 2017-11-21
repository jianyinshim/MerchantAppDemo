//
//  AddShopViewController.h
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"
#import "ShopTableViewCell.h"
#import "ShopDetailTableViewController.h"
#import "ShopObject.h"
#import "ViewShopDetailTableViewController.h"

@interface AddShopViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *shopTableView;
@property (weak, nonatomic) IBOutlet UIButton *addShopButton;

@property (strong, nonatomic) ShopObject *shopObject;
@property (strong, nonatomic) NSMutableArray *shopList;

@end
