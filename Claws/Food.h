//
//  Food.h
//  Claws
//
//  Created by Meet Mehta on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// properties for the food
@interface Food : NSObject <NSCoding>

@property (strong, nonatomic) NSString *foodName;
@property (assign, nonatomic) int cost;
@property (assign, nonatomic) int amountLeft; //delete if necessary
@property (assign, nonatomic) int duration;
@property (strong, nonatomic) NSNumber *foodPosition;
@property (strong, nonatomic) NSString *foodPic;
@property (strong, nonatomic) NSString *positionOfCat;
@property (strong, nonatomic) NSString *associatedCat;
@property (assign, nonatomic) BOOL isBeingUsed;
@property (assign, nonatomic) BOOL isBought;
@property (assign, nonatomic) BOOL isOnScreen; // might not need it.


@end