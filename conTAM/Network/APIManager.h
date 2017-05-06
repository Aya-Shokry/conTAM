//
//  APIManager.h
//  conTAM
//
//  Created by Merna on 5/6/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SessionManager.h"

@interface APIManager : NSObject

+(void)makeGETRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters;

+(void)makePOSTRequestWithURL:(NSString *)url parameters:(NSDictionary *)parameters;

@end
