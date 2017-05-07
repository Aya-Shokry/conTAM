//
//  SignUpViewController.h
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ViewController.h"
#import "UIRefreshControllerDelegate.h"

@interface SignUpViewController : ViewController <UIRefreshControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstNameTxtField;

@property (strong, nonatomic) IBOutlet UITextField *lastNameTxtField;

@property (strong, nonatomic) IBOutlet UITextField *emailTxtField;

@property (strong, nonatomic) IBOutlet UITextField *phoneTxtField;

@property (strong, nonatomic) IBOutlet UITextField *passwordTxtField;

- (IBAction)signUpBtnAction:(id)sender;

@end
