//
//  ServicesURLs.h
//  conTAM
//
//  Created by Merna on 5/4/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServicesURLs : NSObject

+(NSURLRequest*) registerUserRequestWithData:(NSString*) userJSONObject;
+(NSURLRequest*) loginRequestWithPrimaryPhone:(NSString*) phone Password:(NSString*)password;
+(NSURLRequest*) updateUserRequestWithData:(NSString*) userJSONObject;

+(NSURLRequest*) addContactRequestWithData:(NSString*)contactJSONObject Phone:(NSString*)phone;
+(NSURLRequest*) updateContactRequestWithData:(NSString*)contactJSONObject Phone:(NSString*)phone;
+(NSURLRequest*) deleteContactRequestWithData:(NSString*)contactJSONObject;
+(NSURLRequest*) getAllContactsRequestForUser:(NSString*) primaryPhone;

@end
