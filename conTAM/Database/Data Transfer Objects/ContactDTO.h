//
//  ContactDTO.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "ContactHasPhone.h"

RLM_ARRAY_TYPE(ContactHasPhone)

@interface ContactDTO : MTLModel <MTLJSONSerializing>

@property NSInteger id;
@property NSString *firstName;
@property NSString *lastName;
@property NSString *email;
@property NSData *image;
@property RLMArray<ContactHasPhone *><ContactHasPhone> *contactPhoneses;
@property NSArray *contactPhones;

-(instancetype)initWithId:(NSInteger)id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image;

-(instancetype)initWithId:(NSInteger)id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image contactPhoneses:(id<NSFastEnumeration>)contactPhoneses;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image contactPhoneses:(NSArray*)contactPhoneses;

-(void)setContactPhonesesFromJSONDictionary;

@end
