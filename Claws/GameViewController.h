//
//  GameViewController.h
//  Claws
//

//  Copyright (c) 2016 nyu.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "GameData.h"

@interface GameViewController : UIViewController{
@public
    int displayScore1;
    
}


@property (strong, nonatomic) NSMutableArray *myMutableArray;
@property (nonatomic) int displayScore;




NSMutableArray *getMyMutableArray();
int getDisplayScore(); 

@end
