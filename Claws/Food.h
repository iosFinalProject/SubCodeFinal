//
//  Food.h
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Food : NSObject{

NSInteger cost;
NSInteger amountLeft; // probably delete this 
NSInteger duration;
UIImage *foodPic;
}

@end
