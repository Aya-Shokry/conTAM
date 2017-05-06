//
//  User.m
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "User.h"

@implementation User

+(NSArray<NSString *> *)ignoredProperties {
    return @[@"userPhoneses"];
}

-(instancetype)initWithPhone:(NSString *)phone password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image {
    self = [super init];
    if (self) {
        self.phone = phone;
        self.password = password;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
    }
    return self;
}

-(instancetype)initWithPhone:(NSString *)phone password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image userPhoneses:(NSMutableArray *)userPhoneses {
    self = [super init];
    if (self) {
        self.phone = phone;
        self.password = password;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
        self.userPhoneses = userPhoneses;
    }
    return self;
}

+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"phone" : @"phone",
             @"password" : @"password",
             @"firstName" : @"firstName",
             @"lastName" : @"lastName",
             @"email" : @"email",
             @"image" : @"image",
             @"userPhoneses" : @"userPhoneses"
             };
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_password forKey:@"password"];
    [aCoder encodeObject:_firstName forKey:@"firstName"];
    [aCoder encodeObject:_lastName forKey:@"lastName"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeObject:_image forKey:@"image"];
    [aCoder encodeObject:_userPhoneses forKey:@"userPhoneses"];
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    self.phone = [aDecoder decodeObjectForKey:@"phone"];
    self.password = [aDecoder decodeObjectForKey:@"password"];
    self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
    self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
    self.email = [aDecoder decodeObjectForKey:@"email"];
    self.image = [aDecoder decodeObjectForKey:@"image"];
    self.userPhoneses= [aDecoder decodeObjectForKey:@"userPhoneses"];
    return self;
}

@end
