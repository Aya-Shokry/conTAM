//
//  ContactHasPhone.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Realm/Realm.h>

@class ContactDTO;

@interface ContactHasPhone : RLMObject

@property NSInteger *_id;
@property NSString *phone;
@property ContactDTO *owner;

-(instancetype)initWithId:(NSInteger *)_id phone:(NSString *)phone;

-(instancetype)initWithId:(NSInteger *)_id phone:(NSString *)phone owner:(ContactDTO *)owner;

@end
