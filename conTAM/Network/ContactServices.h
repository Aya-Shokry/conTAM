//
//  ContactServices.h
//  conTAM
//
//  Created by Merna on 5/5/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactDTO.h"
#import "ServiceResponseDelegate.h"

@interface ContactServices : NSObject <ServiceResponseDelegate>

- (void) addContactWithData:(ContactDTO*) contact ForUser:(NSString*) primaryPhone;
+(void) updateContactWithData:(NSString*) contactJSONObject ForUser:(NSString*) primaryPhone;
+(void) deleteContact:(NSString*) contactJSONObject;
+(void) getAllContactsForUser:(NSString*) primaryPhone;

@end
