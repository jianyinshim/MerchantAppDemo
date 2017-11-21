//
//  StaffProfileTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "StaffProfileTableViewController.h"

@interface StaffProfileTableViewController ()

@end

@implementation StaffProfileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Detail Information";
    _mxId.text = [NSString stringWithFormat:@"MX-%@", _phoneNum];
    _mxUsername.text = _phoneNum;

}

- (IBAction)confirmTap:(id)sender {
    
    NSDictionary *params = @{@"phoneNum":_phoneNum,
                             @"compId":_phoneNum,
                             @"shopId":_phoneNum,
                             @"staffId":_phoneNum,
                             @"staffName":_staffName.text,
                             @"staffPhoneNum":_staffPhoneNum.text,
                             @"staffPos":_staffPosition.text,
                             @"staffStat":@"Active"};
    
    [GlobalMethod createStaff:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        [self showAlertMessage:nil withTitle:@"Success" handler:^(UIAlertAction *action) {
            UINavigationController *navigationController = self.navigationController;
            [navigationController popViewControllerAnimated:NO];
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
