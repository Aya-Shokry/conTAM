//
//  APIManager.h
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SessionManager.h"
#import "ServiceResponseDelegate.h"

@interface APIManager : NSObject

+(void)makeGETRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters serviceResponseDelegate:(id<ServiceResponseDelegate>)serviceResponseDelegate;

+(void)makePOSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters serviceResponseDelegate:(id<ServiceResponseDelegate>)serviceResponseDelegate serializerType:(int)serializerType;

@end
