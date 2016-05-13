//
//  Shop.h
//  Claws
//
//  Created by Sarah Lerner on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Shop : UITableViewController <UITableViewDelegate, UITableViewDataSource>
//UITableViewController <UITableViewDelegate, UITableViewDataSource>
//Inventory : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
    IBOutlet UITableView *ShopTableView;
    
    NSArray *myData;
    
    NSString *itemBought;
    
}
@end
