//
//  ShopTableViewCell.h
//  MerchantAppDemo
//
//  Created by Beans Group on 17/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShopTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *shopName;
@property (weak, nonatomic) IBOutlet UIImageView *shopImage;
@property (weak, nonatomic) IBOutlet UILabel *shopId;

@end
