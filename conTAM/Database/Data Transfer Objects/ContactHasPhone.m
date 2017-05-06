//
//  ContactHasPhone.m
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ContactHasPhone.h"

@implementation ContactHasPhone

+(NSString *)primaryKey {
    return @"id";
}

-(instancetype)initWithId:(NSInteger)id phone:(NSString *)phone {
    self = [super init];
    if (self) {
        self.id = id;
        self.phone = phone;
    }
    return self;
}

-(instancetype)initWithId:(NSInteger)id contact:(ContactDTO *)contact phone:(NSString *)phone {
    self = [super init];
    if (self) {
        self.id = id;
        self.phone = phone;
        self.contact = contact;
    }
    return self;
}

+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"id" : @"id",
             @"phone" : @"phone",
             @"contact" : @"contact"
             };
}

@end
