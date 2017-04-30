//
//  ContactDTO.m
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ContactDTO.h"

@implementation ContactDTO

+(NSString *)primaryKey {
    return @"_id";
}

-(instancetype)initWithId:(NSInteger *)_id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image {
    self = [super init];
    if (self) {
        self._id = _id;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
    }
    return self;
}

-(instancetype)initWithId:(NSInteger *)_id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image phones:(id<NSFastEnumeration>)phones {
    self = [super init];
    if (self) {
        self._id = _id;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
        [self.phones addObjects:phones];
    }
    return self;
}

@end
