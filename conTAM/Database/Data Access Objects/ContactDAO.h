//
//  ContactDAO.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ContactDTO.h"

@interface ContactDAO : NSObject

+(ContactDAO *)sharedContactDAO;

-(void)addContact:(ContactDTO *)contact;

-(void)setContact:(ContactDTO *)contact;

-(void)deleteContact:(ContactDTO *)contact;

-(NSMutableArray *)getContacts;

-(ContactDTO *)getContact:(NSInteger *)contactId;

-(void)addPhones:(ContactHasPhone *)phones forContact:(ContactDTO *)contact;

-(void)setPhone:(ContactHasPhone *)phone;

-(void)deletePhone:(ContactHasPhone *)phone;

@end
