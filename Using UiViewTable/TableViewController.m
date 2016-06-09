//
//  TableViewController.m
//  Using UiViewTable
//
//  Created by Abhishek Vora on 05/06/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"

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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


-(void)pushButtonClicked:(id)sender
{
    UIAlertController * alert=   [UIAlertController alertControllerWithTitle:@"Title" message:@"Congrats! Button pressed." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okPressed = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
    {
        NSLog(@"Button Pressed");
    }];
    [alert addAction:okPressed];
    [self presentViewController:alert animated:YES completion:nil];
    
}


//-(void)pushButtonClicked:(id)sender
//{
//    UIAlertController *Alert = [[UIAlertController alloc] title:@"buttonpressed" message:@"Congratulations!!! Button pressed"];
//    [Alert show];
//}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
       
    }
    
    cell.myLabel.text = [NSString stringWithFormat:@"label %li",indexPath.row+1];
    cell.textArea.text = [NSString stringWithFormat:@"random Text %li",indexPath.row+1];
    cell.myLogo.image = [UIImage imageNamed:[NSString stringWithFormat:@"%li",indexPath.row+1]];
    
    // here, you had @selector(myButton). But selector is always the method that will be called when  button touch happens i.e. pushButtonClicked
    [cell.myButton addTarget:self action:@selector(pushButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    //Havent added image yet........
    
 
    return cell;
}

// YASH : this is why only label was showing, you made the cell of height 118 but did not specify it to the table view

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 118;
}

// YASH : method to perform stuff when cell clicked (should generally end with deselect method)

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


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

@end
