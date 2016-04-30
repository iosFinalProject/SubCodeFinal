//
//  DecorativeItems.h
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface DecorativeItems : NSObject <NSCoding>

@property (assign, nonatomic) int cost;
@property (assign, nonatomic) BOOL isBeingUsed;
@property (assign, nonatomic) BOOL isBought;
@property (assign, nonatomic) BOOL isOnScreen; // might not need it.
@property (strong, nonatomic) NSNumber *itemPosition;
@property (strong, nonatomic) NSString *associatedCat;
@property (strong, nonatomic) NSString *itemName;
@property (strong, nonatomic) NSString *positionOfCat;


//NSInteger decorativeValue;
//UIImage *itemPic;
//}

@end
