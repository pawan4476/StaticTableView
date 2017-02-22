//
//  TableViewController.h
//  StaticTableView
//
//  Created by Nagam Pawan on 9/26/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController
- (IBAction)emailNotificaton:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *email;
- (IBAction)mobileNotification:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *mobile;
- (IBAction)calendarSync:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *calendar;
- (IBAction)dropBoxSync:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *dropBox;
- (IBAction)googleDriveSync:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *googleDrive;

@end
