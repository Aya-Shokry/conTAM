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

+ (AFHTTPSessionManager *)sharedHTTPSessionManager {
    
    static AFHTTPSessionManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedManager = [AFHTTPSessionManager manager];
        sharedManager.requestSerializer = [AFJSONRequestSerializer new];
        sharedManager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        sharedManager.responseSerializer.acceptableContentTypes = [sharedManager.responseSerializer.acceptableContentTypes setByAddingObjectsFromArray:@[@"text/html"]];
    });
    return sharedManager;
}

+(NSString *)getBaseURL {
    return baseURL;
}

@end
