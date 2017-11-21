//
//  GlobalMethod.m
//  MerchantAppDemo
//
//  Created by Beans Group on 12/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "GlobalMethod.h"

@implementation GlobalMethod

//other method
+ (NSString *_Nullable) retrieveDataFromDictionary:(NSDictionary *_Nonnull)responseDict objectName:(NSString*_Nonnull)keyName {
    if(![[responseDict objectForKey:keyName] isKindOfClass:[NSNull class]]){
        return [responseDict objectForKey:keyName];
    }else{
        return @"-";
    }
}

+ (void)customButton:(UIButton *_Nonnull)button {
    // the amount of spacing to appear between image and title
    CGFloat spacing = 5;
    button.layer.borderWidth = 0.25;
    button.layer.borderColor = [UIColor lightGrayColor].CGColor;
    button.imageView.backgroundColor=[UIColor clearColor];
    button.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    // get the size of the elements here for readability
    CGSize imageSize = button.imageView.frame.size;
    CGSize titleSize = button.titleLabel.frame.size;
    
    // lower the text and push it left to center it
    button.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (imageSize.height + spacing), 0.0);
    
    // the text width might have changed (in case it was shortened before due to
    // lack of space and isn't anymore now), so we get the frame size again
    titleSize = button.titleLabel.frame.size;
    
    // raise the image and push it right to center it
    button.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + spacing), 0.0, 0.0, - titleSize.width);
}


//REST Services
+  (void)retrieveCountryList:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager GET:GET_COUNTRY parameters:params progress:nil success:success failure:failure];
}

+  (void)userLogin:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager POST:USER_LOGIN parameters:params progress:nil success:success failure:failure];
}

+  (void)registerUser:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager POST:REGISTER_USER parameters:params progress:nil success:success failure:failure];
}

+  (void)createCompany:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
//    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager POST:CREATE_COMPANY parameters:params progress:nil success:success failure:failure];
}

+  (void)createStaff:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager POST:CREATE_STAFF parameters:params progress:nil success:success failure:failure];
}

+  (void)retrieveAllStaff:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager GET:GET_ALL_STAFF parameters:params progress:nil success:success failure:failure];
}

+  (void)retrieveStaffDetail:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager GET:url parameters:params progress:nil success:success failure:failure];
}

+  (void)createShop:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager POST:CREATE_SHOP parameters:params progress:nil success:success failure:failure];
}

+  (void)retrieveAllShop:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager GET:GET_ALL_SHOP parameters:params progress:nil success:success failure:failure];
}

+  (void)retrieveShopDetail:(NSString *_Nullable)url params:(NSDictionary *_Nullable)params success:(void (^_Nullable)(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject))success failure:(void (^_Nullable)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error))failure {
    
    NSString *requestId = [NSString stringWithFormat:@"%.f%d", NSDate.date.timeIntervalSince1970, arc4random_uniform(99999)];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    [manager setResponseSerializer:[AFJSONResponseSerializer serializer]];
    [manager.requestSerializer setValue:requestId forHTTPHeaderField:@"requestId"];
    [manager GET:url parameters:params progress:nil success:success failure:failure];
}

@end
