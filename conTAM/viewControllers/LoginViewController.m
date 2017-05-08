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
    
    if (model != [NSNull null]) {
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:model];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:data forKey:@"UserObject"];
        
        [self presentViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"HomeNavigationController"] animated:YES completion:nil];
    } else {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failed to login" message:@"Incorrect phone or password, please re-enter your data" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:okAction];
        [self presentViewController:alert animated:YES completion:^{
            _passwordTxtField.text =@"";
        }];
    }
}

@end
