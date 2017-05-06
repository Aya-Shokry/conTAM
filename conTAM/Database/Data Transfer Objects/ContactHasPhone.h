//
//  ContactHasPhone.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//


#import <Mantle/Mantle.h>

@class ContactDTO;

@interface ContactHasPhone : MTLModel <MTLJSONSerializing>

@property NSInteger id;
@property ContactDTO *contact;
@property NSString *phone;

-(instancetype)initWithId:(NSInteger)id phone:(NSString *)phone;

-(instancetype)initWithId:(NSInteger)id contact:(ContactDTO *)contact phone:(NSString *)phone;

@end
