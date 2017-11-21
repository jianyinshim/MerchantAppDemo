//
//  AddShopViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "AddShopViewController.h"

@interface AddShopViewController ()

@end

@implementation AddShopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self retrieveAllShop];
    
    _shopTableView.delegate = self;
    _shopTableView.dataSource = self;
    
    _addShopButton.layer.cornerRadius = 10;
    _addShopButton.layer.masksToBounds = YES;
    
    self.title = @"Shop List";
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self retrieveAllShop];
}

- (IBAction)addShopTap:(id)sender {
    [self performSegueWithIdentifier:SHOP_DETAIL_VIEWCONTROLLER sender:self];
}

- (void)retrieveAllShop {
    
    [GlobalMethod retrieveAllShop:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        if (![responseDict isKindOfClass:[NSNull class]]) {
            _shopList = [NSMutableArray new];
            
            for (NSDictionary *shop in responseDict) {
                
                _shopObject = [ShopObject new];
                _shopObject.shopId = [GlobalMethod retrieveDataFromDictionary:shop objectName:@"shopId"];
                _shopObject.shopName = [GlobalMethod retrieveDataFromDictionary:shop objectName:@"shopName"];

//                _shopObject.shopId = shop[@"shopId"];
//                _shopObject.shopName = shop[@"shopName"];
                [_shopList addObject:_shopObject];
            }
            [_shopTableView reloadData];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_shopList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ShopTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    _shopObject = _shopList[indexPath.row];
    
    cell.shopId.text = _shopObject.shopId;
    cell.shopName.text = _shopObject.shopName;
    cell.shopImage.image = [UIImage imageNamed:@"logo-m"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:VIEW_SHOP_DETAIL_VIEWCONTROLLER sender:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:VIEW_SHOP_DETAIL_VIEWCONTROLLER])
    {
        // Get reference to the destination view controller
        ViewShopDetailTableViewController *viewShopDetailVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        NSIndexPath *indexPath = [_shopTableView indexPathForSelectedRow];
        viewShopDetailVC.shopObject = _shopList[indexPath.row];
    }
}


@end
