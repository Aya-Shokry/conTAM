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

@synthesize refreshControllerDelegate;

-(void)registerUserWithData:(User *)user{
    NSError *error;
    NSDictionary *userJSONObject = [MTLJSONAdapter JSONDictionaryFromModel:user error:&error];
    if (error == nil) {
        [APIManager makePOSTRequestWithURL:[[SessionManager getBaseURL] stringByAppendingString:@"registerUser"] parameters:userJSONObject serviceResponseDelegate:self serializerType:0];
    }
    else  {
        NSLog(@"Error in [UserServices registerUserWithData] : %@", error.description);
    }
}

-(void)loginWithPhone:(NSString *)primaryPhone password:(NSString *)password {
    NSError *error;
    NSDictionary *parameters = @{@"primaryPhone" : primaryPhone, @"password" : password};
    if (error == nil) {
        [APIManager makePOSTRequestWithURL:[[SessionManager getBaseURL] stringByAppendingString:@"login"] parameters:parameters serviceResponseDelegate:self serializerType:1];
    }
    else  {
        NSLog(@"Error in [UserServices login] : %@", error.description);
    }
}

-(void) updateUserWithData: (User*) user{
    
    
}

-(void)serviceResponseDidReceived:(id)response {
    
    [refreshControllerDelegate refreshViewWithModel:response];
}

@end
