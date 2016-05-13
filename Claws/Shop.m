//
//  Shop.m
//  Claws
//
//  Created by Sarah Lerner on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "Shop.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "DecorativeItems.h"
#import "DecorationInventory.h"


@interface Shop ()

@end

@implementation Shop

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    itemBought =  myData[indexPath.row];
    //DecorativeItems *item =
    NSString *addedItem = [[NSString alloc] initWithFormat:@"%@", itemBought];
    //NSLog(@"***************************");

    if ([[GameData sharedGameData].allItemsInGame objectForKey:addedItem] != nil){
        DecorativeItems *desiredItem = [[GameData sharedGameData].allItemsInGame objectForKey:addedItem];
        if (desiredItem.isBought == NO){
            //if the item hasn't been bought, and you have enough prey points, buy it
            if (([GameData sharedGameData].preyPoints) >= desiredItem.cost){
                [GameData sharedGameData].preyPoints -= desiredItem.cost;
                desiredItem.isBought = YES;
                UITableViewCell *cell = [self.tableView cellForRowAtIndexPath: indexPath];
                cell.textLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
                //NSLog(@"You bought %@", itemBought);
            }
            
        }
    }
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *addedItem = [[NSString alloc] initWithFormat:@"%@", myData[indexPath.row]];
    DecorativeItems *desiredItem = [[GameData sharedGameData].allItemsInGame objectForKey:addedItem];
    if (desiredItem.isBought == NO){
        return YES;
    }
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    myData = [[GameData sharedGameData].allItemsInGame allKeys];
}

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
    NSString *name = [myData objectAtIndex:indexPath.row];
    //[cell.textLabel setText: text];
    
    //fade text if bought
    NSString *addedItem = [[NSString alloc] initWithFormat:@"%@", myData[indexPath.row]];
    DecorativeItems *desiredItem = [[GameData sharedGameData].allItemsInGame objectForKey:addedItem];
    name = [[NSString alloc] initWithFormat:@"%@ ..... %d", name, desiredItem.cost];
    if (desiredItem.isBought == YES){
        cell.textLabel.textColor = [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1];
    }
    [cell.textLabel setText: name];
    return cell;
}



@end
