//
//  Inventory.m
//  Claws
//
//  Created by Jonathan Chua on 4/30/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "DecorationInventory.h"
#import "StartViewController.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "Cats.h"
#import "DecorativeItems.h"
#import "AddItemScreen.h"

//DECORATION INVENTORY

@interface DecorationInventory ()

@end


@implementation DecorationInventory

/*If the shop buys an item:*/
- (IBAction)addToInventory:(id)sender { //
    NSString *addedItem = [[NSString alloc] initWithFormat:@"%s", "itemName"];
    if ([[GameData sharedGameData].allItemsInGame objectForKey:addedItem] != nil) { //If this is a decorative item
        DecorativeItems *itemYouWantToModify = [[GameData sharedGameData].allItemsInGame objectForKey:addedItem];
        itemYouWantToModify.isBought = YES; //Update owned status
    }
    /* Reinstate it when food stuff is back in
     else {
     DecorativeItems *foodYouWantToModify = [[GameData sharedGameData].allFoodsInGame objectForKey:addedItem];
     foodYouWantToModify.isBought = YES; //Update owned status
     }
     */
}


//Placing inventory item onto the screen
- (IBAction)placeItemToScreen:(id)sender { //
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //indexPath.row
    itemSent =  myData[indexPath.row];
    [self performSegueWithIdentifier:@"DecorationInventorySegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //following lines needed only if you need to send some detail across to ContactViewController
    if ([[segue identifier] isEqualToString:@"DecorationInventorySegue"]) {
        //[segue.destinationViewController setDetail:[self detailForIndexPath:[self.tableView indexPathForSelectedRow]]];
        AddItemScreen *controller = (AddItemScreen *)segue.destinationViewController; //
        controller.addItem = itemSent; //Sends over the login array so that it can add it
    }
    
}
 


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // table view data is being set here
    
    // VV Before, it was just myData = [[GameData sharedGameData].allItemsInGame allKeys]
    NSArray *myData1 = [[GameData sharedGameData].allItemsInGame allKeys];
    myData = [[NSMutableArray alloc]init]; 
    for (int fg = 0; fg < [myData1 count]; fg++){
        DecorativeItems *perhapsItemAdd = [[GameData sharedGameData].allItemsInGame objectForKey:myData1[fg]];
        if (perhapsItemAdd.isBought == YES){
            [myData addObject:perhapsItemAdd.itemName];

        }
    }
    
       // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [myData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle: UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    [cell.textLabel setText:[myData objectAtIndex:indexPath.row]];
    return cell;
}

/*
 // Default is 1 if not implemented
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
 return 1;
 }
 
 - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:
 (NSInteger)section{
 NSString *headerTitle;
 if (section==0) {
 headerTitle = @"Section 1 Header";
 }
 else{
 headerTitle = @"Section 2 Header";
 
 }
 return headerTitle;
 }
 
 - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:
 (NSInteger)section{
 NSString *footerTitle;
 if (section==0) {
 footerTitle = @"Section 1 Footer";
 }
 else{
 footerTitle = @"Section 2 Footer";
 
 }
 return footerTitle;
 }
 
 
 #pragma mark - TableView delegate
 
 -(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
 (NSIndexPath *)indexPath{
 [tableView deselectRowAtIndexPath:indexPath animated:YES];
 UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
 NSLog(@"Section:%d Row:%ld selected and its data is %@",
 indexPath.section,(long)indexPath.row,cell.textLabel.text);
 }
 */


/*
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 #warning Incomplete implementation, return the number of rows
 return 0;
 }
 */

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


@end
