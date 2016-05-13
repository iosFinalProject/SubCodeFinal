//
//  DecorativeItems.h
//  Claws
//
//  Created by Meet Mehta on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// properties for the decorative items
@interface DecorativeItems : NSObject <NSCoding>

@property (assign, nonatomic) int cost;
@property (assign, nonatomic) BOOL isBeingUsed;
@property (assign, nonatomic) BOOL isBought;
@property (assign, nonatomic) BOOL isOnScreen; // might not need it.
@property (strong, nonatomic) NSNumber *itemPosition;
@property (strong, nonatomic) NSString *associatedCat;
@property (strong, nonatomic) NSString *itemName;
@property (strong, nonatomic) NSString *positionOfCat;
@property (strong, nonatomic) NSString *picture; 


//NSInteger decorativeValue;
//UIImage *itemPic;
//}

@end
