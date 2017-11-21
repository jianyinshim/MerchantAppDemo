//
//  LoginViewController.h
//  HLDemo
//
//  Created by macbeans on 10/11/2017.
//  Copyright © 2017 macbeans. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalMethod.h"
#import "HomeViewController.h"

@interface LoginViewController : UIViewController

//@property (strong, )
@property (weak, nonatomic) IBOutlet UITextField *phonetxt;
@property (weak, nonatomic) IBOutlet UITextField *passwordtxt;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)loginTap:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *RegisterButton;
@property (weak, nonatomic) IBOutlet UILabel *countryCodeLabel;

@end
