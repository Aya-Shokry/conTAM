//
//  SessionManager.m
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "SessionManager.h"

@implementation SessionManager

static NSString *const baseURL = @"http://localhost:8081/conTAM/conTAM/service/";

+ (id)sharedManager {
    static AFURLSessionManager *_sessionManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
       // _sessionManager = [[self alloc] init];
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        _sessionManager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    });
    
    return _sessionManager;
}

+ (AFHTTPSessionManager *)sharedHTTPSessionManager {
    
    static AFHTTPSessionManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedManager = [AFHTTPSessionManager manager];
        sharedManager.requestSerializer = [[AFJSONRequestSerializer alloc] init];
        sharedManager.responseSerializer.acceptableContentTypes = [sharedManager.responseSerializer.acceptableContentTypes setByAddingObjectsFromArray:@[@"text/html", @"application/json"]];
    });
    return sharedManager;
}

+(NSString *)getBaseURL {
    return baseURL;
}

@end
