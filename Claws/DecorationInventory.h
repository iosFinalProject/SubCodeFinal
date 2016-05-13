//
//  Inventory.h
//  Claws
//
//  Created by Jonathan Chua on 4/30/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

//DECORATION INVENTORY

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DecorationInventory : UITableViewController <UITableViewDelegate, UITableViewDataSource>
//UITableViewController <UITableViewDelegate, UITableViewDataSource>
//Inventory : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    IBOutlet UITableView *DecorationTableView;
    
    NSMutableArray *myData;
    
    NSString *itemSent;
    
}

@end