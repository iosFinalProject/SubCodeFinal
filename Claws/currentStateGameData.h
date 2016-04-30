//
//  currentStateGameData.h
//  Claws
//
//  Created by Libby Goss on 4/24/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface currentStateGameData : NSObject

@property (assign, nonatomic) int highScoreWhenAppOpened;

extern int highScore1;
extern NSMutableDictionary *currCatsAndPosOnScreen;
extern NSMutableDictionary *currItemsAndPosOnScreen;
extern bool food1;


@end
