//
//  LoginViewController.h
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ViewController.h"
#import "SignUpViewController.h"

@interface LoginViewController : ViewController

@property (strong, nonatomic) IBOutlet UITextField *phoneTxtField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtField;

- (IBAction)loginBtnAction:(id)sender;
- (IBAction)signUpBtnAction:(id)sender;


@end
