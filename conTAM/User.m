//
//  User.m
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "User.h"

@implementation User

-(instancetype)initWithPrimaryPhone:(NSString *)primaryPhone password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image phones:(NSMutableArray *)phones {
    self = [super init];
    if (self) {
        self.primaryPhone = primaryPhone;
        self.password = password;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
        self.phones = phones;
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_primaryPhone forKey:@"primaryPhone"];
    [aCoder encodeObject:_password forKey:@"password"];
    [aCoder encodeObject:_firstName forKey:@"firstName"];
    [aCoder encodeObject:_lastName forKey:@"lastName"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeObject:_image forKey:@"image"];
    [aCoder encodeObject:_phones forKey:@"phones"];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self.primaryPhone = [aDecoder decodeObjectForKey:@"primaryPhone"];
    self.password = [aDecoder decodeObjectForKey:@"password"];
    self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
    self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
    self.email = [aDecoder decodeObjectForKey:@"email"];
    self.image = [aDecoder decodeObjectForKey:@"image"];
    self.phones = [aDecoder decodeObjectForKey:@"phones"];
    return self;
}

@end
