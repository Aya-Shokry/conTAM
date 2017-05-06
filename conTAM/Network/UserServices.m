//
//  UserServices.m
//  conTAM
//
//  Created by Merna on 5/5/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "UserServices.h"
#import "APIManager.h"


@implementation UserServices

+(void) registerUserWithData: (User*) user{
    NSError *error;
    NSDictionary *userJSONObject = [MTLJSONAdapter JSONDictionaryFromModel:user error:&error];
    if (error == nil) {
        NSLog(@"JSON : %@", @{@"user" : userJSONObject});
        [APIManager makeGETRequestWithURL:[[SessionManager getBaseURL] stringByAppendingString:@"registerUser"] parameters:@{@"user" : userJSONObject}];
    }
    else  {
        NSLog(@"error in UserServices:registerUserWithData : %@", error.description);
    }
}

+(void) loginWithPhone:(NSString*) primaryPhone AndPassword: (NSString*) password{ // return string
    
  
}

+(void) updateUserWithData: (User*) user{
    
  
}
@end
