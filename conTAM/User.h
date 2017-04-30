//
//  User.h
//  conTAM
//
//  Created by Aya on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property NSString *primaryPhone;
@property NSString *password;
@property NSString *firstName;
@property NSString *lastName;
@property NSString *email;
@property NSData *image;
@property NSMutableArray *phones;

-(instancetype)initWithPrimaryPhone:(NSString *)primaryPhone password:(NSString *)password firstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email image:(NSData *)image phones:(NSMutableArray *)phones;

@end
