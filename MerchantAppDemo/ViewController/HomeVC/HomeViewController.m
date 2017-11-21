//
//  HomeViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 13/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    [self customButton];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *companyName = [userDefaults objectForKey:COMPANY_NAME];
    self.tabBarController.title = companyName;
    
    self.tabBarController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"notify"] style:UIBarButtonItemStyleDone target:self action:@selector(logoutTap)];
    self.tabBarController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addAction)];
}

- (void)logoutTap {

    [self showAlertMessage:nil withTitle:@"Logout" handler:^(UIAlertAction *action) {
        
        //clear all user defaults
        [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:[[NSBundle mainBundle] bundleIdentifier]];
        [self performSegueWithIdentifier:@"loginViewController" sender:self];
    }];
}

- (void)addAction {
    [self performSegueWithIdentifier:SHOP_VIEWCONTROLLER sender:self];
}

- (void)showAlertMessage:(NSString *)message withTitle:(NSString *)title handler:(void(^)(UIAlertAction *action))handler {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:handler];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)customButton {
    
    _activateButton.layer.cornerRadius = 5;
    [GlobalMethod customButton:_companyButton];
    [GlobalMethod customButton:_shopButton];
    [GlobalMethod customButton:_walletButton];
    [GlobalMethod customButton:_getAngpauButton];
    [GlobalMethod customButton:_promotionButton];
    [GlobalMethod customButton:_eStampButon];
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
