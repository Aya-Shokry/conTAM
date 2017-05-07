//
//  LoginViewController.m
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "LoginViewController.h"
#import "UserServices.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginBtnAction:(id)sender {
    
    UserServices *userServices = [UserServices new];
    userServices.refreshControllerDelegate = self;
    [userServices loginWithPhone:_phoneTxtField.text password:_passwordTxtField.text];
}

-(void)refreshViewWithModel:(id)model {
    
}

@end
