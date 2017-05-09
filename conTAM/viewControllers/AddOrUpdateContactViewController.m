//
//  AddOrUpdateContactViewController.m
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "AddOrUpdateContactViewController.h"

@interface AddOrUpdateContactViewController ()

@end

@implementation AddOrUpdateContactViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshViewWithModel:(id)model{

}

- (IBAction)saveBtnAction:(id)sender {
    
    ContactServices *contactServices = [ContactServices new];
    contactServices.refreshControllerDelegate = self;
    
    NSMutableArray* phones = [NSMutableArray new];
    [phones addObject:[_phoneTxtField text]];
    
    [contactServices addContactWithData:[[ContactDTO alloc] initWithFirstName:[_firstNameTxtField text] lastName:[_lastNameTextField text] email:[_emailTxtField text] image:nil contactPhoneses:phones] ForUser:@"01000144446"];
}
@end
