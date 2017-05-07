//
//  ServiceResponseDelegate.h
//  conTAM
//
//  Created by Aya on 5/7/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIRefreshControllerDelegate.h"

@protocol ServiceResponseDelegate <NSObject>

@property id<UIRefreshControllerDelegate> refreshControllerDelegate;

-(void)serviceResponseDidReceived:(id)response;

@end
