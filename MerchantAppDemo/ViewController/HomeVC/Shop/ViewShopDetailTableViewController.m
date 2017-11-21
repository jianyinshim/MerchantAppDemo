//
//  ViewShopDetailTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "ViewShopDetailTableViewController.h"

@interface ViewShopDetailTableViewController ()

@end

@implementation ViewShopDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self retrieveShopDetail];
    _updateButton.layer.cornerRadius = 5;
    _updateButton.layer.masksToBounds = YES;
}

- (void)retrieveShopDetail {
    
    NSString *GET_SHOP_DETAIL_BY_ID = [NSString stringWithFormat:@"%@/%@", GET_SHOP_DETAIL, _shopObject.shopId];
    
    [GlobalMethod retrieveShopDetail:GET_SHOP_DETAIL_BY_ID params:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        
        if (![responseDict isKindOfClass:[NSNull class]]) {
            
            _shopObjectNew = [ShopObject new];
            
            _shopObjectNew.compId = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"compId"];
            _shopObjectNew.shopId = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopId"];
            _shopObjectNew.shopName = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopName"];
            _shopObjectNew.shopType = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopType"];
            _shopObjectNew.shopArea = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopArea"];
            _shopObjectNew.compId = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"compId"];
            _shopObjectNew.shopAddr = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopAddr"];
            _shopObjectNew.shopPhone = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopPhone"];
            _shopObjectNew.shopContName = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopContName"];
            _shopObjectNew.preSaq = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"preSaq"];
            _shopObjectNew.decName = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"decName"];
            _shopObjectNew.decNric = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"decNric"];
            _shopObjectNew.decDate = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"decDate"];

//            newShopObject.compId = responseDict[@"compId"];
//            newShopObject.shopId = responseDict[@"shopId"];
//            newShopObject.shopName = responseDict[@"shopName"];
//            newShopObject.shopType = responseDict[@"shopType"];
//            newShopObject.shopArea = responseDict[@"shopArea"];
//            newShopObject.shopAddr = responseDict[@"shopAddr"];
//            newShopObject.shopPhone = responseDict[@"shopPhone"];
//            newShopObject.shopContName = responseDict[@"shopContName"];
//            newShopObject.preSaq = responseDict[@"preSaq"];
//            newShopObject.decName = responseDict[@"decName"];
//            newShopObject.decDesig = responseDict[@"decDesig"];
//            newShopObject.decNric = responseDict[@"decNric"];
//            newShopObject.decDate = responseDict[@"decDate"];
            
            self.title = _shopObjectNew.shopName;
            _shopIcon.text = _shopObjectNew.shopName;
            _shopName.text = _shopObjectNew.shopName;
            _shopCategory.text = _shopObjectNew.shopType;
            _shopArea.text = _shopObjectNew.shopArea;
            _shopAddress.text = _shopObjectNew.shopAddr;
            _shopPhoneNum.text = _shopObjectNew.shopPhone;
            _shopDescription.text = _shopObjectNew.shopDescription;
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (IBAction)qrCodeTap:(id)sender {
    [self performSegueWithIdentifier:SHOP_QRCODE_VIEWCONTROLLER sender:self];
}

- (IBAction)updateTap:(id)sender {
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
    if ([[segue identifier] isEqualToString:SHOP_QRCODE_VIEWCONTROLLER])
    {
        // Get reference to the destination view controller
        ShopQrCodeViewController *shopQrCodeVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        shopQrCodeVC.shopObject = _shopObjectNew;
    }
}


@end
