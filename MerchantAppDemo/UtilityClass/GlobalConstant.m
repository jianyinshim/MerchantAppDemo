//
//  GlobalConstant.m
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "GlobalConstant.h"

@implementation GlobalConstant

//NSNotification
NSString *const NOTI_LOGIN = @"noti_login";

//Segue identifier
NSString *const LOGIN_VIEWCONTROLLER = @"loginViewController";
NSString *const HOME_VIEWCONTROLLER = @"homeViewController";
NSString *const BUSINESS_PROFILE = @"businessProfile";
NSString *const ADD_STAFF_VIEWCONTROLLER = @"addStaffViewController";
NSString *const STAFF_PROFILE_VIEWCONTROLLER = @"staffProfileViewController";
NSString *const STAFF_DETAIL_VIEWCONTROLLER = @"staffDetailViewController";
NSString *const CAPITAL_VIEWCONTROLLER = @"capitalListViewController";
NSString *const SHOP_VIEWCONTROLLER = @"shopViewController";
NSString *const SHOP_DETAIL_VIEWCONTROLLER = @"shopDetailViewController";
NSString *const QRCODE_VIEWCONTROLLER = @"qrCodeViewController";
NSString *const VIEW_SHOP_DETAIL_VIEWCONTROLLER = @"viewShopDetailViewController";
NSString *const SHOP_QRCODE_VIEWCONTROLLER = @"shopQrCodeViewController";

//UserDefaults
NSString *const USER_NAME = @"user_name";
NSString *const USER_PASSWORD = @"user_password";
NSString *const COMPANY_NAME = @"company_name";

//REST Services 192.168.0.32
//GET METHOD
NSString *const GET_COUNTRY = @"https://restcountries.eu/rest/v2/all";
NSString *const GET_ALL_SHOP = @"http://192.168.0.32:8085/shops/getAll";
NSString *const GET_ALL_STAFF = @"http://192.168.0.32:8085/staff/getAll";
NSString *const GET_STAFF_DETAIL = @"http://192.168.0.32:8085/staff/getById";
NSString *const GET_SHOP_DETAIL = @"http://192.168.0.32:8085/shops/getById";

//POST METHOD
NSString *const USER_LOGIN = @"http://192.168.0.32:8085/mobileserviceslogin/login";
NSString *const REGISTER_USER = @"http://192.168.0.32:8085/users/create";
NSString *const CREATE_COMPANY = @"http://192.168.0.32:8085/companies/create";
NSString *const CREATE_SHOP = @"http://192.168.0.32:8085/shops/create";
NSString *const CREATE_STAFF = @"http://192.168.0.32:8085/staff/create";

//PUT METHOD

@end
