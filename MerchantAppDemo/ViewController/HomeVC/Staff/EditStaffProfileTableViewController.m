//
//  EditStaffProfileTableViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 14/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "EditStaffProfileTableViewController.h"

@interface EditStaffProfileTableViewController ()

@end

@implementation EditStaffProfileTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self retrieveStaffDetail];
}

- (void)retrieveStaffDetail {
    
    NSString *GET_STAFF_DETAIL_BY_ID =[NSString stringWithFormat:@"%@/%@", GET_STAFF_DETAIL,_staffObject.staffId];
    
    [GlobalMethod retrieveStaffDetail:GET_STAFF_DETAIL_BY_ID params:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        
        if (![responseDict isKindOfClass:[NSNull class]]) {
            
            _staffObject.compId = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"compId"];
            _staffObject.phoneNum = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"phoneNum"];
            _staffObject.shopId = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"shopId"];
            _staffObject.staffName = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"staffName"];
            _staffObject.staffPhoneNum = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"phoneNum"];
            _staffObject.staffPos = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"staffPos"];
            _staffObject.staffStat = [GlobalMethod retrieveDataFromDictionary:responseDict objectName:@"staffStat"];

//            _staffObject.compId = responseDict[@"compId"];
//            _staffObject.phoneNum = responseDict[@"phoneNum"];
//            _staffObject.shopId = responseDict[@"shopId"];
//            _staffObject.staffName = responseDict[@"staffName"];
//            _staffObject.staffPhoneNum = responseDict[@"phoneNum"];
//            _staffObject.staffPos = responseDict[@"staffPos"];
//            _staffObject.staffStat = responseDict[@"staffStat"];
            
            self.title = _staffObject.staffName;
            _mxId.text = [NSString stringWithFormat:@"MX-%@", _staffObject.phoneNum];
            _mxUsername.text = _staffObject.staffName;
            _mxLogo.image = [UIImage imageNamed:@"logo-m"];
            
            _staffName.text = _staffObject.staffName;
            _phoneNum.text = _staffObject.phoneNum;
            _shopPermission.text = @"-";
            _staffPosition.text = _staffObject.staffPos;
            _staffStatus.text = _staffObject.staffStat;
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (IBAction)qrCodeTap:(id)sender {
    [self performSegueWithIdentifier:QRCODE_VIEWCONTROLLER sender:self];
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
    if ([[segue identifier] isEqualToString:QRCODE_VIEWCONTROLLER])
    {
        // Get reference to the destination view controller
        GenerateQRCodeViewController *qrCodeVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        qrCodeVC.staffObjectNew = _staffObject;
    }
}


@end
