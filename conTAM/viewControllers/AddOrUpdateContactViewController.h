//
//  AddOrUpdateContactViewController.h
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ViewController.h"
#import "UIRefreshControllerDelegate.h"
#import "ContactDTO.h"
#import "ContactServices.h"

@interface AddOrUpdateContactViewController : ViewController  <UIRefreshControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *firstNameTxtField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *emailTxtField;
@property (strong, nonatomic) IBOutlet UITextField *phoneTxtField;
- (IBAction)saveBtnAction:(id)sender;


@end
