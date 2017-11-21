//
//  RegisterPhoneNumTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "RegisterPhoneNumTableViewController.h"

@interface RegisterPhoneNumTableViewController ()

@end

@implementation RegisterPhoneNumTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)dialingCodeTap:(id)sender {
}

- (IBAction)sendSMSTap:(id)sender {
}

- (IBAction)nextTap:(id)sender {

    if (!([_userPhoneNum.text isEqualToString:@""] || [_userPassword.text isEqualToString:@""])) {
        [self performSegueWithIdentifier:BUSINESS_PROFILE sender:self];
    }
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:BUSINESS_PROFILE])
    {
        // Get reference to the destination view controller
        BusinessProfileTableViewController *businessProfileVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        businessProfileVC.userRegisterCountryCode = _dialingCode.currentTitle;
        businessProfileVC.userRegisterPhoneNumber = _userPhoneNum.text;
        businessProfileVC.userRegisterPassword = _userPassword.text;
    }
}


@end
