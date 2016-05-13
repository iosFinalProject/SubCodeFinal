//
//  AddItemScreen.h
//  Claws
//
//  Created by Jonathan Chua on 5/1/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddItemScreen : UIViewController

@property (strong, nonatomic) IBOutlet NSString *addItem;
@property (strong, nonatomic) IBOutlet UITextField *itemName;

@end
