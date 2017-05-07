//
//  APIManager.m
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

+(void)makeGETRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters serviceResponseDelegate:(id<ServiceResponseDelegate>)serviceResponseDelegate {
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:url parameters:parameters error:nil];
    
    NSURLSessionDataTask *dataTask = [[SessionManager sharedHTTPSessionManager] dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error in [APIManager makeGETRequest] %@", error);
        } else {
            [serviceResponseDelegate serviceResponseDidReceived:responseObject];
        }
    }];
    
    [dataTask resume];
}

+(void)makePOSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters serviceResponseDelegate:(id<ServiceResponseDelegate>)serviceResponseDelegate serializerType:(int)serializerType {
    
    NSMutableURLRequest *request;
    
    switch (serializerType) {
        case 0:
            request = [[AFJSONRequestSerializer serializer] requestWithMethod:@"POST" URLString:url parameters:parameters error:nil];
            break;
            
        case 1:
            request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:url parameters:parameters error:nil];
            break;
            
        default:
            break;
    }
    
    NSURLSessionDataTask *dataTask = [[SessionManager sharedHTTPSessionManager] dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error in [APIManager makePOSTRequest] %@", error);
        } else {
            [serviceResponseDelegate serviceResponseDidReceived:responseObject];
        }
    }];
    
    [dataTask resume];
}

@end
