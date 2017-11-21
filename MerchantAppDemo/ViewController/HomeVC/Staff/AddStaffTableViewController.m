//
//  AddStaffTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "AddStaffTableViewController.h"

@interface AddStaffTableViewController ()

@end

@implementation AddStaffTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Add New Staff";
    
    _confirmButton.layer.cornerRadius = 5;
    _confirmButton.layer.masksToBounds = YES;
}

- (IBAction)confirmTap:(id)sender {
    if (!([_phoneNumText.text isEqualToString:@""])) {
        [self performSegueWithIdentifier:STAFF_PROFILE_VIEWCONTROLLER sender:self];
    } else {
        [self showAlertMessage:@"Field empty" withTitle:@"Error" handler:nil];
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
    if ([[segue identifier] isEqualToString:@"staffProfileViewController"])
    {
        // Get reference to the destination view controller
        StaffProfileTableViewController *staffProfileVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        staffProfileVC.phoneNum = _phoneNumText.text;
    }
}




@end
