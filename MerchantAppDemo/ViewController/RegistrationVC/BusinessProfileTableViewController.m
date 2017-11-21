//
//  BusinessProfileTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "BusinessProfileTableViewController.h"

@interface BusinessProfileTableViewController ()

@end

@implementation BusinessProfileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)nexttap:(id)sender {
    
    // registerPhoneNum page (not yet register user) > registerCompany page  > complete register (both user and company)
    
    NSString *phoneNo = [NSString stringWithFormat:@"%@%@", _userRegisterCountryCode, _userRegisterPhoneNumber];
    NSString *newPhoneNo = [phoneNo substringFromIndex:1];
    NSLog(@"%@",newPhoneNo);
    NSDictionary *registerParams = @{@"phoneNum": newPhoneNo,
                                     @"password": _userRegisterPassword};
    
    [GlobalMethod registerUser:registerParams success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        
        NSDictionary *params = @{@"userId": newPhoneNo,   //userId == registerPhoneNumber
                                 @"compId": [NSString stringWithFormat:@"%@-MY", _userRegisterPhoneNumber], //
                                 @"compName": _registerName.text,   //
                                 @"compNum": _registerNumber.text,  //
                                 @"compCat": @"ROC",
                                 @"compAddr": @"Tower 9, Level 7, Unit 5, UOA Business Park",
                                 @"compArea": [NSNull null],
                                 @"telNum":_contactTelNumber.text,
                                 @"mobileNum": _contactMobileNumber.text,
                                 @"faxNum": _contactFaxNumber.text,
                                 @"Email": _contactEmail.text,
                                 @"tradeName": _tradingName.text,
                                 @"casType": @"case1",
                                 @"extPp": @"Ext PP",
                                 @"compCert": [NSNull null],
                                 @"curAcqBank": _curAcquireBank.text,
                                 @"Ppcsm": _salesPerMonth.text,
                                 @"verfName": @"123qwe",
                                 @"staffCode": @"staff123",
                                 @"bankDesignation": @"12300309",
                                 @"bankDate": @"12-Jan-2107"};
        
        [GlobalMethod createCompany:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"%@", responseObject);
            [self showAlertMessage:responseObject withTitle:@"Success" handler:^(UIAlertAction *action) {
                [self performSegueWithIdentifier:HOME_VIEWCONTROLLER sender:self];
            }];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@", error);
            [self showAlertMessage:[error localizedDescription] withTitle:@"Error" handler:nil];
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
