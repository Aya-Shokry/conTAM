//
//  ContactDTO.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Realm/Realm.h>
#import "ContactHasPhone.h"

RLM_ARRAY_TYPE(ContactHasPhone)

@interface ContactDTO : RLMObject

@property NSInteger *_id;
@property NSString *firstName;
@property NSString *lastName;
@property NSString *email;
@property NSData *image;
@property RLMArray<ContactHasPhone *><ContactHasPhone> *phones;

-(instancetype)initWithId:(NSInteger *)_id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image;

-(instancetype)initWithId:(NSInteger *)_id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image phones:(id<NSFastEnumeration>)phones;

@end
