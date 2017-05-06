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

-(void)makeRequestToUrl:(NSURL *)url withParameters:(NSDictionary *)parameters success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

@end
