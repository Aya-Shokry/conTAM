//
//  SignUpViewController.m
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "SignUpViewController.h"
#import "User.h"
#import "UserServices.h"
#import "LoginViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signUpBtnAction:(id)sender {
    
    UserServices *userServices = [UserServices new];
    userServices.refreshControllerDelegate = self;
    [userServices registerUserWithData:[[User alloc] initWithPhone:_phoneTxtField.text password:_passwordTxtField.text firstName:_firstNameTxtField.text lastName:_lastNameTxtField.text email:_emailTxtField.text image:nil]];
}

-(void)refreshViewWithModel:(id)model {
    
    [self presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"LoginController"] animated:YES completion:nil];
}

@end
