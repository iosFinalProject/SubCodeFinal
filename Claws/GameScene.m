//
//  GameScene.m
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright (c) 2016 nyu.edu. All rights reserved.
//

#import "GameScene.h"
//#import "GameViewController.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "Cats.h"


@implementation GameScene{
    SKLabelNode* _numClicks;
    SKLabelNode* _highScore;
}

bool foodInScene = false;

-(void)didMoveToView:(SKView *)view {
    
    [[GameData sharedGameData].testArray removeAllObjects]; 

    
    _numClicks = [[SKLabelNode alloc] initWithFontNamed:@"Futura-CondensedMedium"];
    _numClicks.fontSize = 12.0;
    _numClicks.position = CGPointMake(CGRectGetMidX(self.frame),
                                        (CGRectGetMidY(self.frame)-350));
    _numClicks.fontColor = [SKColor blueColor];
    [self addChild:_numClicks];
    
    _highScore = [[SKLabelNode alloc] initWithFontNamed:@"Futura-CondensedMedium"];
    _highScore.fontSize = 12.0;
    _highScore.position = CGPointMake((CGRectGetMidX(self.frame)+80),
                                      (CGRectGetMidY(self.frame)-350));
    _highScore.fontColor = [SKColor redColor];
    [self addChild:_highScore];
    
    
    
    
    /* Setup your scene here */
    SKSpriteNode *back = [SKSpriteNode spriteNodeWithImageNamed:@"screen2a"];
    back.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    back.zPosition = -1;
    back.xScale = .40;
    back.yScale = .40;
    [self addChild: back];
    
    ////^^ Above Shit works
    
    
     SKSpriteNode *cat1 = [SKSpriteNode spriteNodeWithImageNamed:@"MT1"];
     cat1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
     //cat1.zPosition = 1;
     [self addChild: cat1];
    
    /*if (foodInScene ==  false){
        
        SKSpriteNode *cat2 = [SKSpriteNode spriteNodeWithImageNamed:@"MT1"];
        cat2.position = CGPointMake((CGRectGetMidX(self.frame) -120), (CGRectGetMidY(self.frame)-120));
        //cat1.zPosition = 1;
        [self addChild: cat2];
        //skView.showsFPS = NO;
        
        
    }*/
    
    //////////////////////////////////////////////////////////
    
    NSArray *keyArray = [currCatsAndPosOnScreen allKeys];
    //NSArray *keyArray = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
    
    NSLog(@"%@", keyArray);
    NSLog (@" How many Cats in currCatsAndPos: %i", [currCatsAndPosOnScreen count]);
    NSLog (@"  How many cats in gameshared data: %i", [[GameData sharedGameData].CatsAndPosOnScreen count]);

    if ([currCatsAndPosOnScreen count] != 0){
        
        NSNumber *positionAssociatedWithCat = currCatsAndPosOnScreen[keyArray [0]];
        //NSArray *positionArray12 = [GameData sharedGameData].CatsAndPosOnScreen[keyArray [0]];
        //int xInt = [positionArray12[0] integerValue];
        //int yInt = [positionArray12 [1] integerValue];
        
        NSLog(@ "%@", positionAssociatedWithCat);
        //NSLog(@ "%i", yInt);
        NSLog (@"-----------------------------------------------------------");
        
    }


    
    
    SKSpriteNode *catnum1 = [SKSpriteNode spriteNodeWithImageNamed: @"MT1"];
    catnum1.position = CGPointMake((CGRectGetMidX(self.frame) - 150), (CGRectGetMidY(self.frame)- 150));
    [self addChild: catnum1];
    
    //// ^^^^ CAT ARRAYYYYYYYY
    
    
    //////////////////////////////////////////////////////////
    
   NSArray *keyArrayItems = [currItemsAndPosOnScreen allKeys];
   // NSArray *keyArrayItems = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];

    
    NSLog(@"%@", keyArrayItems);
    NSLog (@"How many Items in curritemsAndPos: %i", [currItemsAndPosOnScreen count]);
    NSLog (@"  How many items in gameshared data: %i", [[GameData sharedGameData].ItemsAndPosOnScreen count]);
    
    NSNumber *positionAssociatedWithItem = currItemsAndPosOnScreen[keyArrayItems [0]];
    //NSArray *positionArrayItems12 = [GameData sharedGameData].ItemsAndPosOnScreen[keyArray [0]];
    //int xIntItems = [positionArrayItems12[0] integerValue];
    //int yIntItems = [positionArrayItems12 [1] integerValue];
    
    NSLog(@ "%@", positionAssociatedWithItem);
    //NSLog(@ "%i", yIntItems);
    NSLog (@"-----------------------------------------------------------");
    
    NSLog (@"Total Cats in Master Array %i", [[GameData sharedGameData].allCatsInGame count]);
    NSArray *catsNames = [[GameData sharedGameData].allCatsInGame allKeys];
    NSLog(@"%@", catsNames);
    for (int abcd = 0; abcd<[catsNames count]; abcd++){
        Cats *checkCatAssociatedItem = [[GameData sharedGameData].allCatsInGame objectForKey:catsNames[abcd]];
        NSLog (@"The cat is %@ and it's associated item is %@", checkCatAssociatedItem.name, checkCatAssociatedItem.associatedItem);
    }
    Cats *checkThisCatOut = [[GameData sharedGameData].allCatsInGame objectForKey:catsNames[1]];
    NSLog (@" This Cat's Name is %@ and its current loyalty is  %i", checkThisCatOut.name, checkThisCatOut.currLoyaltyCounter);
    NSLog (@"-----------------------------------------------------------");

    


    
    
    SKSpriteNode *itemNum1 = [SKSpriteNode spriteNodeWithImageNamed: @"CatBed"];
    itemNum1.position = CGPointMake((CGRectGetMidX(self.frame) - 150), (CGRectGetMidY(self.frame)- 150));
    itemNum1.xScale = .3;
    itemNum1.yScale = .3;
    [self addChild: itemNum1];
    
    
    /////////////////////////////////////////// ^^ ITEM ARRAY
    
    


    
    SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
    //myLabel.text = getMyMutableArray()[1];
    NSString *stuffWrite =  [currCatsAndPosOnScreen objectForKey: @"320"];
    //int myInt = getDisplayScore();
    NSString* myString;
    if (stuffWrite != nil){
         myString = stuffWrite;
    }
    else{
        myString = @"Oops!"; 
    }

    myLabel.text = myString; 
    myLabel.fontSize = 45;
    myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                   CGRectGetMidY(self.frame));
    myLabel.zPosition = 7;
    
    [self addChild:myLabel];
    
    
    
    
    _highScore.text = [NSString stringWithFormat:@"High: %i pt", [GameData sharedGameData].highScore];
    _numClicks.text = @"0 clicks";
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        if ([GameData sharedGameData].testArray == nil){
            [GameData sharedGameData].testArray = [[NSMutableArray alloc] init];
        }
        /*[[GameData sharedGameData].testArray addObject: @"hey"];
        for (int a = 0; a < [[GameData sharedGameData].testArray count]; a++){
            NSString *testString = [GameData sharedGameData].testArray [a];
            NSLog(testString);
        }
        NSLog (@"--------------");*/
        
        [currCatsAndPosOnScreen setObject:@"abccc" forKey: @"320"];

        [GameData sharedGameData].numClicks += 1;
        _numClicks.text = [NSString stringWithFormat:@"%i clicks", [GameData sharedGameData].numClicks];
        if ([GameData sharedGameData].numClicks > [GameData sharedGameData].highScore){
            [GameData sharedGameData].highScore = [GameData sharedGameData].numClicks;
            
        }

        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        sprite.zPosition = 1;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    _highScore.text = [NSString stringWithFormat:@"High: %i pt", [GameData sharedGameData].highScore];
    _numClicks.text = [NSString stringWithFormat:@"%i clicks", [GameData sharedGameData].numClicks];
    [[GameData sharedGameData] save];


    /* Called before each frame is rendered */
}




@end
