//
//  GlobalConstant.h
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalConstant : NSObject

extern NSString *const NOTI_LOGIN;

//segue identifiers
extern NSString *const LOGIN_VIEWCONTROLLER;
extern NSString *const HOME_VIEWCONTROLLER;
extern NSString *const BUSINESS_PROFILE;
extern NSString *const ADD_STAFF_VIEWCONTROLLER;
extern NSString *const STAFF_PROFILE_VIEWCONTROLLER;
extern NSString *const STAFF_DETAIL_VIEWCONTROLLER;
extern NSString *const CAPITAL_VIEWCONTROLLER;
extern NSString *const SHOP_VIEWCONTROLLER;
extern NSString *const SHOP_DETAIL_VIEWCONTROLLER;
extern NSString *const QRCODE_VIEWCONTROLLER;
extern NSString *const VIEW_SHOP_DETAIL_VIEWCONTROLLER;
extern NSString *const SHOP_QRCODE_VIEWCONTROLLER;

//UserDefaults
extern NSString *const USER_NAME;
extern NSString *const USER_PASSWORD;
extern NSString *const COMPANY_NAME;

//REST services
//GET
extern NSString *const GET_COUNTRY;
extern NSString *const GET_ALL_SHOP;
extern NSString *const GET_ALL_STAFF;
extern NSString *const GET_STAFF_DETAIL;
extern NSString *const GET_SHOP_DETAIL;

//POST
extern NSString *const USER_LOGIN;
extern NSString *const REGISTER_USER;
extern NSString *const CREATE_COMPANY;
extern NSString *const CREATE_SHOP;
extern NSString *const CREATE_STAFF;

@end
