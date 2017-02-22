//
//  TableViewController.m
//  StaticTableView
//
//  Created by Nagam Pawan on 9/26/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 2;
    }
    else{
        return 3;
    }

}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)emailNotificaton:(id)sender {
    if ([self.email isOn] == NO) {
        NSLog(@"The email notification is OFF");
        UIAlertController *emailAlert = [UIAlertController alertControllerWithTitle:@"Email Notification" message:@"Email Notification is turned OFF" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *emailAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [emailAlert addAction:emailAction];
        [self presentViewController:emailAlert animated:YES completion:nil];
    }
    else{
        NSLog(@"The email notification is turned ON");
        UIAlertController *emailAlert = [UIAlertController alertControllerWithTitle:@"Email Notification" message:@"Email Notification is turned ON" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *emailAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [emailAlert addAction:emailAction];
        [self presentViewController:emailAlert animated:YES completion:nil];
        
    }
}
- (IBAction)mobileNotification:(id)sender {
    if ([self.mobile isOn] == NO) {
        NSLog(@"The mobile notification is OFF");
        UIAlertController *mobileAlert = [UIAlertController alertControllerWithTitle:@"Mobile Notification" message:@"Mobile Notification is turned OFF" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *mobileAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [mobileAlert addAction:mobileAction];
        [self presentViewController:mobileAlert animated:YES completion:nil];
    }
    else{
        NSLog(@"The mobile notification is turned ON");
        UIAlertController *mobileAlert = [UIAlertController alertControllerWithTitle:@"Mobile Notification" message:@"Mobile Notification is turned ON" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *mobileAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [mobileAlert addAction:mobileAction];
        [self presentViewController:mobileAlert animated:YES completion:nil];
        
    }

}
- (IBAction)calendarSync:(id)sender {
    if ([self.calendar isOn] == NO) {
        NSLog(@"The calendar synching is turned OFF");
        UIAlertController *calendarAlert = [UIAlertController alertControllerWithTitle:@"Calendar Sync" message:@"Calendar Sync is turned OFF" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *calendarAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [calendarAlert addAction:calendarAction];
        [self presentViewController:calendarAlert animated:YES completion:nil];
    }
    else{
        NSLog(@"The calendar synching is turned ON");
        UIAlertController *calendarAlert = [UIAlertController alertControllerWithTitle:@"Calendar Sync" message:@"Calendar Sync is turned ON" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *calendarAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [calendarAlert addAction:calendarAction];
        [self presentViewController:calendarAlert animated:YES completion:nil];
    }

}
- (IBAction)dropBoxSync:(id)sender {
    if ([self.dropBox isOn] == NO) {
        NSLog(@"The dropBox synching is turned OFF");
        UIAlertController *dropBoxAlert = [UIAlertController alertControllerWithTitle:@"DropBox Sync" message:@"DropBox Sync is turned OFF" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *dropBoxAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [dropBoxAlert  addAction:dropBoxAction];
        [self presentViewController:dropBoxAlert animated:YES completion:nil];
    }
    else{
        NSLog(@"The dropBox synching is turned ON");
        UIAlertController *dropBoxAlert = [UIAlertController alertControllerWithTitle:@"DropBox Sync" message:@"DropBox Sync is turned ON" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *dropBoxAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [dropBoxAlert  addAction:dropBoxAction];
        [self presentViewController:dropBoxAlert animated:YES completion:nil];    }

}
- (IBAction)googleDriveSync:(id)sender {
    if ([self.googleDrive isOn] == NO) {
    NSLog(@"The googlrDrive synching is turned OFF");
    UIAlertController *googleDriveAlert = [UIAlertController alertControllerWithTitle:@"GoogleDrive Sync" message:@"Googledrive Sync is turned OFF" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *googleDriveAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    [googleDriveAlert  addAction:googleDriveAction];
    [self presentViewController:googleDriveAlert animated:YES completion:nil];
}
    else{
        NSLog(@"The googlrDrive synching is turned ON");
        UIAlertController *googleDriveAlert = [UIAlertController alertControllerWithTitle:@"GoogleDrive Sync" message:@"Googledrive Sync is turned ON" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *googleDriveAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
        [googleDriveAlert  addAction:googleDriveAction];
        [self presentViewController:googleDriveAlert animated:YES completion:nil];    }

}
@end
