//
//  ServicesURLs.m
//  conTAM
//
//  Created by Merna on 5/4/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ServicesURLs.h"

@implementation ServicesURLs

+(NSURLRequest*) registerUserRequestWithData:(NSString*) userJSONObject{
    return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/registerUser?user=%@",userJSONObject]]];
}

+(NSURLRequest*) loginRequestWithPrimaryPhone:(NSString*) phone Password:(NSString*)password{
      return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/login?primaryPhone=%@&password=%@",phone,password]]];
}

+(NSURLRequest*) updateUserRequestWithData:(NSString*) userJSONObject{
     return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/updateUser?user=%@",userJSONObject]]];
}

+(NSURLRequest*) addContactRequestWithData:(NSString*)contactJSONObject Phone:(NSString*)phone{
        return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/addContact?primaryPhone=%@&contact=%@",phone,contactJSONObject]]];
}

+(NSURLRequest*) updateContactRequestWithData:(NSString*)contactJSONObject Phone:(NSString*)phone{
    return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/updateContact?primaryPhone=%@&contact=%@",phone,contactJSONObject]]];
}

+(NSURLRequest*) deleteContactRequestWithData:(NSString*)contactJSONObject{
    return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/deleteContact?contact=%@",contactJSONObject]]];
}

+(NSURLRequest*) getAllContactsRequestForUser:(NSString*) primaryPhone{
    return [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/conTAM/conTAM/service/getAllContacts?primaryPhone=%@",primaryPhone]]];
}
@end

