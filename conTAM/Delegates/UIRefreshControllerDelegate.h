//
//  UIRefreshControllerDelegate.h
//  conTAM
//
//  Created by Aya on 5/7/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol UIRefreshControllerDelegate <NSObject>

-(void)refreshViewWithModel:(id)model;

@end
