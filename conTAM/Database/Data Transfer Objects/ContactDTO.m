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
    return @"id";
}

+(NSArray<NSString *> *)ignoredProperties {
    return @[@"contactPhones"];
}

-(instancetype)initWithId:(NSInteger)id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image {
    self = [super init];
    if (self) {
        self.id = id;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
    }
    return self;
}

-(instancetype)initWithId:(NSInteger)id firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image contactPhoneses:(id<NSFastEnumeration>)contactPhoneses {
    self = [super init];
    if (self) {
        self.id = id;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.image = image;
        [self.contactPhoneses addObjects:contactPhoneses];
    }
    return self;
}

-(void)setContactPhonesesFromJSONDictionary {
    for (NSDictionary *contactPhone in self.contactPhones) {
        [self.contactPhoneses addObject:[[ContactHasPhone alloc] initWithId:[contactPhone[@"id"] integerValue] contact:self phone:contactPhone[@"phone"]]];
    }
}

+(NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"id" : @"id",
             @"firstName" : @"firstName",
             @"lastName" : @"lastName",
             @"email" : @"email",
             @"image" : @"image",
             @"contactPhones" : @"contactPhoneses"
             };
}

+(NSValueTransformer *)JSONTransformerForKey:(NSString *)key {
    return [key isEqualToString:@"contactPhoneses"]? [MTLJSONAdapter arrayTransformerWithModelClass:ContactHasPhone.class] : nil;
}

@end
