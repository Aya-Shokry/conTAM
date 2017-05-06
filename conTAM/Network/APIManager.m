//
//  APIManager.m
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

+(void)makeGETRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters {
    NSError *error;
    if (error == nil) {
        [[SessionManager sharedHTTPSessionManager] GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"%@", responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"error in APIManager:makeGETRequest : %@", error.description);
        }];
    }
    else {
        NSLog(@"error in APIManager:makeGETRequest : %@", error.description);
    }
}

+(void)makePOSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameterserror {
    
}

@end
