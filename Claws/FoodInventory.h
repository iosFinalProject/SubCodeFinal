//
//  Inventory1.h
//  Claws
//
//  Created by Jonathan Chua on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

//FOOD INVENTORY

#import <UIKit/UIKit.h>

@interface FoodInventory : UITableViewController

{
    IBOutlet UITableView *DecorationTableView;
    
    NSMutableArray *myData;
    
}

@end