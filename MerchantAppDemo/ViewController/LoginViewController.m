//
//  LoginViewController.m
//  HLDemo
//
//  Created by macbeans on 10/11/2017.
//  Copyright © 2017 macbeans. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _loginButton.layer.cornerRadius = 5;
    _loginButton.layer.masksToBounds = YES;
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *username = [userDefaults objectForKey:USER_NAME];
    NSString *password = [userDefaults objectForKey:USER_PASSWORD];
    
    if (username && password != nil) {
        _phonetxt.text = username;
        _passwordtxt.text = password;
        [_loginButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    }
}

- (IBAction)registerTap:(id)sender {
}

- (IBAction)loginTap:(id)sender {

//    [self performSegueWithIdentifier:HOME_VIEWCONTROLLER sender:self];
    
    if (!([_phonetxt.text isEqualToString:@""] || [_passwordtxt.text isEqualToString:@""])) {

        NSString *phoneNo = [NSString stringWithFormat:@"%@%@", _countryCodeLabel.text,_phonetxt.text];
        NSString *newPhoneNo = [phoneNo substringFromIndex:1];
        NSDictionary *params = @{@"phoneNum": newPhoneNo,
                                 @"password": _passwordtxt.text};

        [GlobalMethod userLogin:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"%@", responseObject);
            NSDictionary *responseDict = (NSDictionary *)responseObject;
            NSString *companyName = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"companyName"];
//            NSString *companyName = responseDict[@"companyName"];
            
            NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
            [userDefaults setObject:_phonetxt.text forKey:USER_NAME];
            [userDefaults setObject:_passwordtxt.text forKey:USER_PASSWORD];
            [userDefaults setObject:companyName forKey:COMPANY_NAME];
            
            [self showAlertMessage:nil withTitle:@"Success" handler:^(UIAlertAction *action) {
                [self performSegueWithIdentifier:HOME_VIEWCONTROLLER sender:self];
            }];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@", error);
            [self showAlertMessage:[error localizedDescription] withTitle:@"Error" handler:nil];
        }];
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
}
 

@end
