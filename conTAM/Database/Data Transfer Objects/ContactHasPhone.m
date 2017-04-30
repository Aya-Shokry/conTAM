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
    return @"_id";
}

-(instancetype)initWithId:(NSInteger *)_id phone:(NSString *)phone {
    self = [super init];
    if (self) {
        self._id = _id;
        self.phone = phone;
    }
    return self;
}

-(instancetype)initWithId:(NSInteger *)_id phone:(NSString *)phone owner:(ContactDTO *)owner {
    self = [super init];
    if (self) {
        self._id = _id;
        self.phone = phone;
        self.owner = owner;
    }
    return self;
}

@end
