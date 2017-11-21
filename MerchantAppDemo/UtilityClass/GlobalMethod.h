//
//  GlobalMethod.h
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>
#import "GlobalConstant.h"

#define RGB(R,G,B) ([UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0])

@interface GlobalMethod : NSObject

//other method
+ (NSString *_Nullable) retrieveDataFromDictionary:(NSDictionary *_Nonnull)responseDict objectName:(NSString*_Nonnull)keyName;

+ (void)customButton:(UIButton *_Nonnull)button;

//REST Services
+  (void)retrieveCountryList:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)registerUser:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)userLogin:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)createCompany:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)createStaff:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)retrieveAllStaff:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)retrieveStaffDetail:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)createShop:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)retrieveAllShop:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

+  (void)retrieveShopDetail:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure;

@end
