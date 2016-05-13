//
//  GameScene.m
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright (c) 2016 nyu.edu. All rights reserved.
//

#import "GameScene.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "Cats.h"
#import "DecorativeItems.h"


@implementation GameScene{
    SKLabelNode* _numClicks;
    SKLabelNode* _highScore;
}

bool foodInScene = false;

-(void)didMoveToView:(SKView *)view {
    float catScale = .40;
    float itemScale = .40;
    int itemZPosition = 8;
    int catZPosition = 9;
    
    int catSpatialPositionX1 = 160;
    int catSpatialPositionY1 = 20;
    int itemSpatialPositionX1 = 150;
    int itemSpatialPositionY1 = 30;
    
    int catSpatialPositionX2 = 55;
    int catSpatialPositionY2 = 250;
    int itemSpatialPositionX2 = 90;
    int itemSpatialPositionY2 = 265;
    
    int catSpatialPositionX3 = -80;
    int catSpatialPositionY3 = 80;
    int itemSpatialPositionX3 = -85;
    int itemSpatialPositionY3 = 125;
    
    int catSpatialPositionX4 = -170;
    int catSpatialPositionY4 = -200;
    int itemSpatialPositionX4 = -160;
    int itemSpatialPositionY4 = -170;
    
    //NSMutableArray *LizardPositions = [[NSMutableArray alloc] init];
    //[LizardPositions addObject:@"lizard-pos-1.png"];
    
    [[GameData sharedGameData].testArray removeAllObjects]; 

    
    /*_numClicks = [[SKLabelNode alloc] initWithFontNamed:@"Futura-CondensedMedium"];
    _numClicks.fontSize = 12.0;
    _numClicks.position = CGPointMake(CGRectGetMidX(self.frame),
                                        (CGRectGetMidY(self.frame)-350));
    _numClicks.fontColor = [SKColor blueColor];
    [self addChild:_numClicks];*/
    
    _highScore = [[SKLabelNode alloc] initWithFontNamed:@"Futura-CondensedMedium"];
    _highScore.fontSize = 15.0;
    _highScore.position = CGPointMake((CGRectGetMidX(self.frame)-167),
                                      (CGRectGetMidY(self.frame)-365));
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
    
    
     /*SKSpriteNode *cat1 = [SKSpriteNode spriteNodeWithImageNamed:@"MT1"];
     cat1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
     //cat1.zPosition = 1;
     [self addChild: cat1];*/
    
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
    
    //NSLog(@"%@", keyArray);
    NSLog (@" How many Cats in currCatsAndPos: %i", [currCatsAndPosOnScreen count]);
    NSArray *allCatsInCurrCatsAndPos = [currCatsAndPosOnScreen allKeys];
    NSLog(@"Which cat in currCatsAndPos: %@", allCatsInCurrCatsAndPos);
    NSLog (@"  How many cats in gameshared data: %i", [[GameData sharedGameData].CatsAndPosOnScreen count]);
    NSArray *allCatsInCatsAndPosOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
    NSLog(@"Which cat in CatsAndPosOnScreen: %@", allCatsInCatsAndPosOnScreen);



    if ([currCatsAndPosOnScreen count] != 0){
        
        NSNumber *positionAssociatedWithCat = currCatsAndPosOnScreen[keyArray [0]];
        //NSArray *positionArray12 = [GameData sharedGameData].CatsAndPosOnScreen[keyArray [0]];
        //int xInt = [positionArray12[0] integerValue];
        //int yInt = [positionArray12 [1] integerValue];
        
        NSLog(@ "%@", positionAssociatedWithCat);
        //NSLog(@ "%i", yInt);
        NSLog (@"-----------------------------------------------------------");
        
    }


    
    
    /*SKSpriteNode *catnum1 = [SKSpriteNode spriteNodeWithImageNamed: @"MT1"];
    catnum1.position = CGPointMake((CGRectGetMidX(self.frame) - 150), (CGRectGetMidY(self.frame)- 150));
    [self addChild: catnum1];*/  ///// <------ cat comes in through here
    
    for (int qwerty = 0; qwerty < [keyArray count]; qwerty ++){
        int catSpatialPositionX = 0;
        int catSpatialPositionY = 0;
        Cats* actualCatToAdd = [[GameData sharedGameData].allCatsInGame objectForKey:keyArray[qwerty]];
        DecorativeItems *catsAssociatedItem = [[GameData sharedGameData].allItemsInGame objectForKey: actualCatToAdd.associatedItem];
        if ([catsAssociatedItem.itemPosition  isEqual: @1]){
            catSpatialPositionX = catSpatialPositionX1;
            catSpatialPositionY = catSpatialPositionY1;
        }
        
        else if ([catsAssociatedItem.itemPosition  isEqual: @2]){
            catSpatialPositionX = catSpatialPositionX2;
            catSpatialPositionY = catSpatialPositionY2;
        }
        
        else if ([catsAssociatedItem.itemPosition  isEqual: @3]){
            catSpatialPositionX = catSpatialPositionX3;
            catSpatialPositionY = catSpatialPositionY3;
        }
        
        else if ([catsAssociatedItem.itemPosition  isEqual: @4]){
            catSpatialPositionX = catSpatialPositionX4;
            catSpatialPositionY = catSpatialPositionY4;
        }
        
        
        
        NSString *picOfCat = actualCatToAdd.CatPositionPictures[0];
        NSLog(@ "NAME OF CATTTTTTTTTTTTTTTTTT %@", actualCatToAdd.name); 
        NSLog(@" PICTURE OF CATTTTTTTTTTTTTT, %@", picOfCat);
        SKSpriteNode *catToAdd = [SKSpriteNode spriteNodeWithImageNamed: picOfCat];
        catToAdd.xScale = catScale;
        catToAdd.yScale = catScale;
        catToAdd.zPosition = catZPosition;
        catToAdd.position = CGPointMake((CGRectGetMidX(self.frame) - catSpatialPositionX), (CGRectGetMidY(self.frame)- catSpatialPositionY));
        [self addChild: catToAdd];
    }
    
    //// ^^^^ CAT ARRAYYYYYYYY
    
    
    //////////////////////////////////////////////////////////
    
   NSArray *keyArrayItems = [currItemsAndPosOnScreen allKeys];
   // NSArray *keyArrayItems = [[GameData sharedGameData].ItemsAndPosOnScreen allKeys];

    
    NSLog(@"%@", keyArrayItems);
    NSLog (@"How many Items in curritemsAndPos: %i", [currItemsAndPosOnScreen count]);
    NSLog (@"  How many items in gameshared data: %i", [[GameData sharedGameData].ItemsAndPosOnScreen count]);
    
    if ([keyArrayItems count] != 0){
        NSNumber *positionAssociatedWithItem = currItemsAndPosOnScreen[keyArrayItems [0]];
        //NSArray *positionArrayItems12 = [GameData sharedGameData].ItemsAndPosOnScreen[keyArray [0]];
        //int xIntItems = [positionArrayItems12[0] integerValue];
        //int yIntItems = [positionArrayItems12 [1] integerValue];
        
        NSLog(@ "%@", positionAssociatedWithItem);
        if ([keyArrayItems count] >= 2){
            NSLog(@ "%@", currItemsAndPosOnScreen[keyArrayItems [1]]);
        }
        //NSLog(@ "%i", yIntItems);
        NSLog (@"-----------------------------------------------------------");

    }
    
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

    


    
    
    /*SKSpriteNode *itemNum1 = [SKSpriteNode spriteNodeWithImageNamed: @"CatBed"];
    itemNum1.position = CGPointMake((CGRectGetMidX(self.frame) - 150), (CGRectGetMidY(self.frame)- 150));
    itemNum1.xScale = .3;
    itemNum1.yScale = .3;
    [self addChild: itemNum1];*/ // <---- item comes in through here
    
    for (int dsw = 0; dsw < [keyArrayItems count]; dsw ++){
        int itemPositionX = 0;
        int itemPositionY = 0;
        DecorativeItems* actualItemToAdd = [[GameData sharedGameData].allItemsInGame objectForKey:keyArrayItems[dsw]];
        
        if ([actualItemToAdd.itemPosition isEqual: @1]){
            itemPositionX = itemSpatialPositionX1;
            itemPositionY = itemSpatialPositionY1;
        }
        
        else if ([actualItemToAdd.itemPosition isEqual: @2]){
            itemPositionX = itemSpatialPositionX2;
            itemPositionY = itemSpatialPositionY2;
        }
        
        else if ([actualItemToAdd.itemPosition isEqual: @3]){
            itemPositionX = itemSpatialPositionX3;
            itemPositionY = itemSpatialPositionY3;
        }
        
        else if ([actualItemToAdd.itemPosition isEqual: @4]){
            itemPositionX = itemSpatialPositionX4;
            itemPositionY = itemSpatialPositionY4;
        }
        
        SKSpriteNode *itemToAdd = [SKSpriteNode spriteNodeWithImageNamed: actualItemToAdd.picture];
        itemToAdd.xScale = itemScale;
        itemToAdd.yScale = itemScale;
        itemToAdd.zPosition = itemZPosition;
        itemToAdd.position = CGPointMake((CGRectGetMidX(self.frame) - itemPositionX), (CGRectGetMidY(self.frame)- itemPositionY));
        [self addChild: itemToAdd];
    }
    
    
    /////////////////////////////////////////// ^^ ITEM ARRAY
    
    


    
    /*SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
    
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
    
    [self addChild:myLabel];*/
    
    
    
    
    _highScore.text = [NSString stringWithFormat:@"Prey Points: %i pt", [GameData sharedGameData].preyPoints];
    //_numClicks.text = @"0 clicks";
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    /*for (UITouch *touch in touches) {
        if ([GameData sharedGameData].testArray == nil){
            [GameData sharedGameData].testArray = [[NSMutableArray alloc] init];
        }
       //////////////////// /*[[GameData sharedGameData].testArray addObject: @"hey"];
        /////for (int a = 0; a < [[GameData sharedGameData].testArray count]; a++){
        ////    NSString *testString = [GameData sharedGameData].testArray [a];
          /////  NSLog(testString);
        ////}
       /////// NSLog (@"--------------");
        
        // !!!!@@@@@@@@@@@@@@@%%%%%%%%%%%%%%% VV deleted that just now.
        //[currCatsAndPosOnScreen setObject:@"abccc" forKey: @"320"];

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
    }*/
}

-(void)update:(CFTimeInterval)currentTime {
    _highScore.text = [NSString stringWithFormat:@"Prey Points: %i pt", [GameData sharedGameData].preyPoints];
    //_numClicks.text = [NSString stringWithFormat:@"%i clicks", [GameData sharedGameData].numClicks];
    [[GameData sharedGameData] save];


    /* Called before each frame is rendered */
}




@end
