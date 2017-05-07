//
//  UserServices.h
//  conTAM
//
//  Created by Merna on 5/5/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "ServiceResponseDelegate.h"

@interface UserServices : NSObject <ServiceResponseDelegate>

-(void)registerUserWithData:(User *)user;
-(void)loginWithPhone:(NSString *)primaryPhone password:(NSString *)password;
-(void) updateUserWithData: (User*) user;

@end
