//
//  main.m
//  conTAM
//
//  Created by Aya on 4/29/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ContactDTO.h"
#import "ContactDAO.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *result = @{
                                 @"id" : @1,
                                 @"firstName" : @"Aya",
                                 @"lastName" : @"Shokry",
                                 @"email" : @"aya@yahoo.com",
                                 @"contactPhoneses": @[
                                         @{@"id" : @1,
                                           @"contact" : @{@"id" : @1,
                                                          @"firstName" : @"Aya",
                                                          @"lastName" : @"Shokry",
                                                          @"email" : @"aya@yahoo.com"}
                                           ,@"phone" : @"01120497490"},
                                         @{@"id" : @2,
                                           @"contact" : @{@"id" : @1,
                                                          @"firstName" : @"Aya",
                                                          @"lastName" : @"Shokry",
                                                          @"email" : @"aya@yahoo.com"}
                                           ,@"phone" : @"01120497491"}]
                                 };
        
        NSError *error;
        ContactDTO *contact = [MTLJSONAdapter modelOfClass:ContactDTO.class fromJSONDictionary:result error:&error];
        if (error != nil) {
            NSLog(@"error : %@", error);
        }
        [contact setContactPhonesesFromJSONDictionary];
        [[ContactDAO sharedContactDAO] addContact:contact];
        
        result = [MTLJSONAdapter JSONDictionaryFromModel:contact error:&error];
        if (error != nil) {
            NSLog(@"error : %@", error);
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
