//
//  LoginViewController.h
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ViewController.h"
#import "SignUpViewController.h"
#import "UIRefreshControllerDelegate.h"

@interface LoginViewController : ViewController <UIRefreshControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *phoneTxtField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtField;

- (IBAction)loginBtnAction:(id)sender;


@end
