//
//  ContactServices.m
//  conTAM
//
//  Created by Merna on 5/5/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ContactServices.h"
#import "APIManager.h"

@implementation ContactServices

@synthesize refreshControllerDelegate;

- (void) addContactWithData:(ContactDTO*) contact ForUser:(NSString*) primaryPhone{ //return String
    
    NSError *error;
    
    NSDictionary * contactJSONObject = [MTLJSONAdapter JSONDictionaryFromModel:contact error:&error];
    NSDictionary * params = @{@"primaryPhone":primaryPhone,@"contact":contactJSONObject};

    
    if (error == nil) {
        [APIManager makePOSTRequestWithURL:[[SessionManager getBaseURL] stringByAppendingString:@"addContact"] parameters:params serviceResponseDelegate:self serializerType:0];
    }
    else  {
        NSLog(@"Error in [UserServices registerUserWithData] : %@", error.description);
    }

}

+(void) updateContactWithData:(NSString*) contactJSONObject ForUser:(NSString*) primaryPhone{
    
    
}

+(void) deleteContact:(NSString*) contactJSONObject{
    

}

+(void) getAllContactsForUser:(NSString*) primaryPhone{ //return string
    

}
-(void)serviceResponseDidReceived:(id)response{

}
@end
