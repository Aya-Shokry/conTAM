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
    
    NSMutableURLRequest *request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:url parameters:parameters error:nil];
    
    NSURLSessionDataTask *dataTask = [[SessionManager sharedHTTPSessionManager] dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@", responseObject);
        }
    }];
    
    [dataTask resume];
}

+(void)makePOSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameterserror {
    
}

@end
