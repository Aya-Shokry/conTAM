//
//  ContactsListViewController.h
//  conTAM
//
//  Created by Merna on 4/30/17.
//  Copyright © 2017 JETS. All rights reserved.
//

#import "ViewController.h"

@interface ContactsListViewController : ViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *contactsListTableView;

@end
