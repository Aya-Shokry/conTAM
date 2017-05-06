//
//  ContactDAO.m
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ContactDAO.h"
#import "ContactHasPhone.h"

@implementation ContactDAO

static RLMRealm *realm;

+(ContactDAO *)sharedContactDAO {
    
    static ContactDAO *sharedContactDAOInstance = nil;
    
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        sharedContactDAOInstance = [ContactDAO new];
        
        // Get the default Realm
        realm = [RLMRealm defaultRealm];
        NSLog(@"realm file URL : %@", realm.configuration.fileURL);
    });
    
    return sharedContactDAOInstance;
}

-(void)addContact:(ContactDTO *)contact {
    NSError *error;
    [realm beginWriteTransaction];
    [realm addObject:contact];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

-(void)setContact:(ContactDTO *)contact{
    NSError *error;
    [realm beginWriteTransaction];
    [realm addOrUpdateObject:contact];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

-(void)deleteContact:(ContactDTO *)contact {
    NSError *error;
    [realm beginWriteTransaction];
    [realm deleteObject:contact];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

-(NSMutableArray *)getContacts {
    return (NSMutableArray *)(id<NSFastEnumeration>)[ContactDTO allObjects]
    ;
}

-(ContactDTO *)getContact:(NSInteger *)contactId {
    return [[ContactDTO objectsWhere:@"_id = %ld", (long)contactId] firstObject];
}

-(void)addPhones:(ContactHasPhone *)phones forContact:(ContactDTO *)contact {
    NSError *error;
    [realm beginWriteTransaction];
    [contact.contactPhoneses addObjects:(id<NSFastEnumeration>)phones];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

-(void)setPhone:(ContactHasPhone *)phone {
    NSError *error;
    [realm beginWriteTransaction];
    [realm addOrUpdateObject:phone];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

-(void)deletePhone:(ContactHasPhone *)phone {
    NSError *error;
    [realm beginWriteTransaction];
    [realm deleteObject:phone];
    [realm commitWriteTransaction:&error];
    if (error != nil) {
        NSLog(@"%@", [error description]);
    }
}

@end
