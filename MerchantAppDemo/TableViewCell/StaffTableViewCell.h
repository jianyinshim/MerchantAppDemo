//
//  StaffTableViewCell.h
//  MerchantAppDemo
//
//  Created by Beans Group on 15/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StaffTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *staffName;
@property (weak, nonatomic) IBOutlet UILabel *staffId;
@property (weak, nonatomic) IBOutlet UILabel *staffPhoneNum;

@end
