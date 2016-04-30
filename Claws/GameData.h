//
//  GameData.h
//  Claws
//
//  Created by Libby Goss on 4/23/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameData : NSObject <NSCoding>

@property (strong, nonatomic) NSMutableDictionary *ItemsAndPosOnScreen;
@property (strong, nonatomic) NSMutableDictionary *CatsAndPosOnScreen;
@property (strong, nonatomic) NSMutableArray *testArray;
@property (strong, nonatomic) NSMutableDictionary *allCatsInGame;
@property (strong, nonatomic) NSMutableDictionary *allItemsInGame;
@property (assign, nonatomic) int numClicks; /////// for testing purposes
@property (assign, nonatomic) int highScore; /////// for testing purposes
@property (assign, nonatomic) bool isFood;
@property (assign, nonatomic) int preyPoints;




+(instancetype)sharedGameData;
-(void)reset;
-(void)save; 

@end
