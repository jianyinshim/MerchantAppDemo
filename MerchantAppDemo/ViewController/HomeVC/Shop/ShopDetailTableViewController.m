//
//  ShopDetailTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "ShopDetailTableViewController.h"

@interface ShopDetailTableViewController ()

@end

@implementation ShopDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _confirmButton.layer.cornerRadius = 10;
    _confirmButton.layer.masksToBounds = YES;
}

- (IBAction)confirmButton:(id)sender {
    
    NSString *randId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    NSDictionary *params = @{@"phoneNum" : _shopPhoneNum.text,
                             @"compId" : randId,
                             @"shopName" : _shopName.text,
                             @"shopId": randId,
                             @"shopType" : _shopCategory.text,
                             @"shopAddr" : _shopAddress.text,
                             @"shopPhone" : _shopPhoneNum.text,
                             @"shopDesc" : _shopDescription.text,
                             @"shopArea" : _shopArea.text,
                             @"shopContName" : @"Country name",
                             @"preSaq" : @"1",
                             @"decName" : @"decName",
                             @"decDesig" : @"decDesig",
                             @"decNric" : @"decNric",
                             @"decDate" : @"decDate"};
    
    [GlobalMethod createShop:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        [self showAlertMessage:nil withTitle:@"Success" handler:^(UIAlertAction *action) {
            UINavigationController *navigationController = self.navigationController;
            [navigationController popViewControllerAnimated:YES];
        }];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
        [self showAlertMessage:[error localizedDescription] withTitle:@"Error" handler:nil];
    }];
}

- (void)showAlertMessage:(NSString *)message withTitle:(NSString *)title handler:(void(^)(UIAlertAction *action))handler {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:handler];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
