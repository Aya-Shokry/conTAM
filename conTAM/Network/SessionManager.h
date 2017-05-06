//
//  SessionManager.h
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface SessionManager : NSObject <NSURLSessionTaskDelegate, NSURLSessionDataDelegate,NSURLSessionDelegate>

+ (AFHTTPSessionManager *)sharedHTTPSessionManager;
+(NSString *)getBaseURL;

@end
