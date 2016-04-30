//
//  StartViewController.m
//  Claws
//
//  Created by Libby Goss on 4/24/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "StartViewController.h"
#import "GameViewController.h"
#import "GameData.h"
#import "currentStateGameData.h"
#import "Cats.h"
#import "DecorativeItems.h"



@interface StartViewController ()

@end

@implementation StartViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    /*[GameData sharedGameData].allCatsInGame = [[NSMutableDictionary alloc] init];
    
    Cats *Birch = [[Cats alloc] init];
    Birch.name = @"Birch";
    Birch.currLoyaltyCounter = 10;
    Birch.loyaltyThreshold = 15;
    Birch.maxLoyalty = 25;
    Birch.specificFood = [[NSMutableArray alloc] init];
    Birch.specificItems = [[NSMutableArray alloc] init];
    Birch.inClan = false; 
    Birch.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Birch forKey:@"Birch"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Maple = [[Cats alloc] init];
    Maple.name = @"Maple";
    Maple.currLoyaltyCounter = 10;
    Maple.loyaltyThreshold = 25;
    Maple.maxLoyalty = 35;
    Maple.specificFood = [[NSMutableArray alloc] init];
    Maple.specificItems = [[NSMutableArray alloc] init];
    Maple.inClan = false;
    Maple.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Maple forKey:@"Maple"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Rowan = [[Cats alloc] init];
    Rowan.name = @"Rowan";
    Rowan.currLoyaltyCounter = 10;
    Rowan.loyaltyThreshold = 30;
    Rowan.maxLoyalty = 45;
    Rowan.specificFood = [[NSMutableArray alloc] init];
    Rowan.specificItems = [[NSMutableArray alloc] init];
    Rowan.inClan = false;
    Rowan.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Rowan forKey:@"Rowan"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Lizard = [[Cats alloc] init];
    Lizard.name = @"Lizard";
    Lizard.currLoyaltyCounter = 10;
    Lizard.loyaltyThreshold = 25;
    Lizard.maxLoyalty = 35;
    Lizard.specificFood = [[NSMutableArray alloc] init];
    Lizard.specificItems = [[NSMutableArray alloc] init];
    Lizard.inClan = false;
    Lizard.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Lizard forKey:@"Lizard"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cloud = [[Cats alloc] init];
    Cloud.name = @"Cloud";
    Cloud.currLoyaltyCounter = 10;
    Cloud.loyaltyThreshold = 17;
    Cloud.maxLoyalty = 22;
    Cloud.specificFood = [[NSMutableArray alloc] init];
    Cloud.specificItems = [[NSMutableArray alloc] init];
    Cloud.inClan = false;
    Cloud.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cloud forKey:@"Cloud"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Pebble = [[Cats alloc] init];
    Pebble.name = @"Pebble";
    Pebble.currLoyaltyCounter = 10;
    Pebble.loyaltyThreshold = 40;
    Pebble.maxLoyalty = 45;
    Pebble.specificFood = [[NSMutableArray alloc] init];
    Pebble.specificItems = [[NSMutableArray alloc] init];
    Pebble.inClan = false;
    Pebble.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Pebble forKey:@"Pebble"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Sparrow = [[Cats alloc] init];
    Sparrow.name = @"Sparrow";
    Sparrow.currLoyaltyCounter = 10;
    Sparrow.loyaltyThreshold = 30;
    Sparrow.maxLoyalty = 33;
    Sparrow.specificFood = [[NSMutableArray alloc] init];
    Sparrow.specificItems = [[NSMutableArray alloc] init];
    Sparrow.inClan = false;
    Sparrow.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Sparrow forKey:@"Sparrow"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Lily = [[Cats alloc] init];
    Lily.name = @"Lily";
    Lily.currLoyaltyCounter = 10;
    Lily.loyaltyThreshold = 35;
    Lily.maxLoyalty = 40;
    Lily.specificFood = [[NSMutableArray alloc] init];
    Lily.specificItems = [[NSMutableArray alloc] init];
    Lily.inClan = false;
    Lily.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Lily forKey:@"Lily"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cinder = [[Cats alloc] init];
    Cinder.name = @"Cinder";
    Cinder.currLoyaltyCounter = 10;
    Cinder.loyaltyThreshold = 27;
    Cinder.maxLoyalty = 35;
    Cinder.specificFood = [[NSMutableArray alloc] init];
    Cinder.specificItems = [[NSMutableArray alloc] init];
    Cinder.inClan = false;
    Cinder.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cinder forKey:@"Cinder"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Cooper = [[Cats alloc] init];
    Cooper.name = @"Cooper";
    Cooper.currLoyaltyCounter = 10;
    Cooper.loyaltyThreshold = 40;
    Cooper.maxLoyalty = 50;
    Cooper.specificFood = [[NSMutableArray alloc] init];
    Cooper.specificItems = [[NSMutableArray alloc] init];
    Cooper.inClan = false;
    Cooper.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Cooper forKey:@"Cooper"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Oak = [[Cats alloc] init];
    Oak.name = @"Oak";
    Oak.currLoyaltyCounter = 10;
    Oak.loyaltyThreshold = 20;
    Oak.maxLoyalty = 35;
    Oak.specificFood = [[NSMutableArray alloc] init];
    Oak.specificItems = [[NSMutableArray alloc] init];
    Oak.inClan = false;
    Oak.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Oak forKey:@"Oak"];
    ////////////////////////////////////////////////////////////////////////////////
    
    Cats *Tawny = [[Cats alloc] init];
    Tawny.name = @"Rowan";
    Tawny.currLoyaltyCounter = 10;
    Tawny.loyaltyThreshold = 12;
    Tawny.maxLoyalty = 24;
    Tawny.specificFood = [[NSMutableArray alloc] init];
    Tawny.specificItems = [[NSMutableArray alloc] init];
    Tawny.inClan = false;
    Tawny.onScreen = false;
    [[GameData sharedGameData].allCatsInGame setObject:Tawny forKey:@"Tawny"];
    ////////////////////////////////////////////////////////////////////////////////
    
    */
    
    /*NSArray* allCatNamesPlease = [[GameData sharedGameData].allCatsInGame allKeys];
    for (int tyu = 0; tyu < [allCatNamesPlease count]; tyu ++){
        Cats *revisedCat = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesPlease[tyu]];
        revisedCat.associatedItem = @"123456";
    }*/
    
   /*[GameData sharedGameData].allItemsInGame = [[NSMutableDictionary alloc] init];
    
    DecorativeItems *blackberryBush = [[DecorativeItems alloc]init];
    blackberryBush.itemName = @"Blackberry Bush";
    blackberryBush.cost = 60; 
    blackberryBush.isBeingUsed = NO;
    blackberryBush.isBought = NO;
    blackberryBush.isOnScreen = NO;
    blackberryBush.associatedCat = @"45678";
    blackberryBush.positionOfCat = @"headLeaves";
    [[GameData sharedGameData].allItemsInGame setObject:blackberryBush forKey:@"Blackberry Bush"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *pileLeaves = [[DecorativeItems alloc]init];
    pileLeaves.itemName = @"Pile Of Leaves";
    pileLeaves.cost = 40;
    pileLeaves.isBeingUsed = NO;
    pileLeaves.isBought = NO;
    pileLeaves.isOnScreen = NO;
    pileLeaves.associatedCat = @"45678";
    pileLeaves.positionOfCat = @"headLeaves";
    [[GameData sharedGameData].allItemsInGame setObject:pileLeaves forKey:@"Pile Of Leaves"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *birdSkull = [[DecorativeItems alloc]init];
    birdSkull.itemName = @"Bird Skull";
    birdSkull.cost = 250;
    birdSkull.isBeingUsed = NO;
    birdSkull.isBought = NO;
    birdSkull.isOnScreen = NO;
    birdSkull.associatedCat = @"45678";
    birdSkull.positionOfCat = @"onHead";
    [[GameData sharedGameData].allItemsInGame setObject:birdSkull forKey:@"Bird Skull"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *treeStump = [[DecorativeItems alloc]init];
    treeStump.itemName = @"Tree Stump";
    treeStump.cost = 120;
    treeStump.isBeingUsed = NO;
    treeStump.isBought = NO;
    treeStump.isOnScreen = NO;
    treeStump.associatedCat = @"45678";
    treeStump.positionOfCat = @"laying";
    [[GameData sharedGameData].allItemsInGame setObject:treeStump forKey:@"Tree Stump"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *ballMoss = [[DecorativeItems alloc]init];
    ballMoss.itemName = @"Ball of Moss";
    ballMoss.cost = 80;
    ballMoss.isBeingUsed = NO;
    ballMoss.isBought = NO;
    ballMoss.isOnScreen = NO;
    ballMoss.associatedCat = @"45678";
    ballMoss.positionOfCat = @"swatting";
    [[GameData sharedGameData].allItemsInGame setObject:ballMoss forKey:@"Ball of Moss"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *hawkFeather = [[DecorativeItems alloc]init];
    hawkFeather.itemName = @"Hawk Feather";
    hawkFeather.cost = 50;
    hawkFeather.isBeingUsed = NO;
    hawkFeather.isBought = NO;
    hawkFeather.isOnScreen = NO;
    hawkFeather.associatedCat = @"45678";
    hawkFeather.positionOfCat = @"rolling";
    [[GameData sharedGameData].allItemsInGame setObject:hawkFeather forKey:@"Hawk Feather"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *bigStick = [[DecorativeItems alloc]init];
    bigStick.itemName = @"Big Stick";
    bigStick.cost = 30;
    bigStick.isBeingUsed = NO;
    bigStick.isBought = NO;
    bigStick.isOnScreen = NO;
    bigStick.associatedCat = @"45678";
    bigStick.positionOfCat = @"rolling";
    [[GameData sharedGameData].allItemsInGame setObject:bigStick forKey:@"Big Stick"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *flowers = [[DecorativeItems alloc]init];
    flowers.itemName = @"Flowers";
    flowers.cost = 70;
    flowers.isBeingUsed = NO;
    flowers.isBought = NO;
    flowers.isOnScreen = NO;
    flowers.associatedCat = @"45678";
    flowers.positionOfCat = @"swatting";
    [[GameData sharedGameData].allItemsInGame setObject:flowers forKey:@ "Flowers"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *hollowTrunk = [[DecorativeItems alloc]init];
    hollowTrunk.itemName = @"Hollow Trunk";
    hollowTrunk.cost = 150;
    hollowTrunk.isBeingUsed = NO;
    hollowTrunk.isBought = NO;
    hollowTrunk.isOnScreen = NO;
    hollowTrunk.associatedCat = @"45678";
    hollowTrunk.positionOfCat = @"headHole";
    [[GameData sharedGameData].allItemsInGame setObject:hollowTrunk forKey:@"Hollow Trunk"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *flatRock = [[DecorativeItems alloc]init];
    flatRock.itemName = @"Small Flat Rock";
    flatRock.cost = 110;
    flatRock.isBeingUsed = NO;
    flatRock.isBought = NO;
    flatRock.isOnScreen = NO;
    flatRock.associatedCat = @"45678";
    flatRock.positionOfCat = @"laying";
    [[GameData sharedGameData].allItemsInGame setObject:flatRock forKey:@"Small Flat Rock"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *sunningRocks = [[DecorativeItems alloc]init];
    sunningRocks.itemName = @"Sunning Rocks";
    sunningRocks.cost = 160;
    sunningRocks.isBeingUsed = NO;
    sunningRocks.isBought = NO;
    sunningRocks.isOnScreen = NO;
    sunningRocks.associatedCat = @"45678";
    sunningRocks.positionOfCat = @"laying";
    [[GameData sharedGameData].allItemsInGame setObject:sunningRocks forKey:@"Sunning Rocks"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *ribCage = [[DecorativeItems alloc]init];
    ribCage.itemName = @"Rib Cage";
    ribCage.cost = 320;
    ribCage.isBeingUsed = NO;
    ribCage.isBought = NO;
    ribCage.isOnScreen = NO;
    ribCage.associatedCat = @"45678";
    ribCage.positionOfCat = @"laying";
    [[GameData sharedGameData].allItemsInGame setObject:ribCage forKey:@"Rib Cage"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *mossyNest = [[DecorativeItems alloc]init];
    mossyNest.itemName = @"Mossy Nest";
    mossyNest.cost = 240;
    mossyNest.isBeingUsed = NO;
    mossyNest.isBought = NO;
    mossyNest.isOnScreen = NO;
    mossyNest.associatedCat = @"45678";
    mossyNest.positionOfCat = @"sleeping";
    [[GameData sharedGameData].allItemsInGame setObject:mossyNest forKey:@"Mossy Nest"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *ashTree = [[DecorativeItems alloc]init];
    ashTree.itemName = @"Ash Tree";
    ashTree.cost = 430;
    ashTree.isBeingUsed = NO;
    ashTree.isBought = NO;
    ashTree.isOnScreen = NO;
    ashTree.associatedCat = @"45678";
    ashTree.positionOfCat = @"sitting";
    [[GameData sharedGameData].allItemsInGame setObject:ashTree forKey:@"Ash Tree"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *femur = [[DecorativeItems alloc]init];
    femur.itemName = @"Femur";
    femur.cost = 280;
    femur.isBeingUsed = NO;
    femur.isBought = NO;
    femur.isOnScreen = NO;
    femur.associatedCat = @"45678";
    femur.positionOfCat = @"rolling";
    [[GameData sharedGameData].allItemsInGame setObject:femur forKey: @"Femur"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    DecorativeItems *scratchingBark = [[DecorativeItems alloc]init];
    scratchingBark.itemName = @"Scratching Bark";
    scratchingBark.cost = 220;
    scratchingBark.isBeingUsed = NO;
    scratchingBark.isBought = NO;
    scratchingBark.isOnScreen = NO;
    scratchingBark.associatedCat = @"45678";
    scratchingBark.positionOfCat = @"laying";
    [[GameData sharedGameData].allItemsInGame setObject:scratchingBark forKey:@"Scratching Bark"];
    //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    */
    NSArray *allItemNames = [[GameData sharedGameData].allItemsInGame allKeys];
    NSLog(@"%@", allItemNames);
    
    
    //ADD INITIAL ITEMS TO GAMEDATA, COPY GAMEDATA TO CURRENT DATA...ALSO HERE
    //THEN, go to viewdidoad of game scene and ADD ITEMS AND CATS FROM CURRENT DATA.
    
    highScore1 = [GameData sharedGameData].highScore;
    NSArray *posArray1 = @[@150, @150];
    //[[GameData sharedGameData].CatsAndPosOnScreen removeAllObjects];
    //[GameData sharedGameData].CatsAndPosOnScreen = [[NSMutableDictionary alloc]init];
    //[GameData sharedGameData].ItemsAndPosOnScreen = [[NSMutableDictionary alloc]init];
    
    
    
    
    //[[GameData sharedGameData].CatsAndPosOnScreen setObject:posArray1 forKey:@"MT1"]; //// INITIAL DATA
    //// ^^ the key will actually be a cat object, not just a string literal of the name...
    
    //[[GameData sharedGameData].ItemsAndPosOnScreen setObject: posArray1 forKey:@"CatBed"]; /// INITIAL //// DATA ^^ the key will actually be an item object
    
    
    //Cats *catToAddOnScreen = [[GameData sharedGameData].allCatsInGame objectForKey:@"Lizard"];
    [[GameData sharedGameData].CatsAndPosOnScreen setObject:@1  forKey:@"Lizard"];  //<---- LINE WITH TROUBLE. copywithzone
    
    // MUY IMPORTANTE BELOWWWWWWWW
    
    // ^^ PRevious two lines....instead of actual cat and position, just use the cat's name as key...instead of actual cat object. much simpler
    [[GameData sharedGameData].ItemsAndPosOnScreen setObject:@1  forKey:@"CatBed"];
    
    
    currCatsAndPosOnScreen = [NSMutableDictionary dictionaryWithDictionary:[GameData sharedGameData].CatsAndPosOnScreen];
    
    currItemsAndPosOnScreen = [NSMutableDictionary dictionaryWithDictionary:[GameData sharedGameData].ItemsAndPosOnScreen];
    
    food1 = [GameData sharedGameData].isFood;
    

    ////////////////////////// BEGINNING ACTUAL START-UP SCREEN LOGIC
    
    // FIRST....DETERMINE IF ANY CATS CURRENTLY ON SCREEN NEED TO LEAVE
    
    int howManyCatsOnScreen = [currCatsAndPosOnScreen count];
    NSMutableArray *catsCurrentlyOnScreen = [[NSMutableArray alloc]initWithArray: [currCatsAndPosOnScreen allKeys]];
    // ^^ all the keys (which should be cat objects) are put into the catsCurrentlyOnScreen Array.
    
    ////////// TESTING PURPOSES
    
    /*Cats *tryDeletingCat = catsCurrentlyOnScreen[0]; *************** !!! <---- now this entire block will give me errors because catsCurrentlyOnScreen
     ////////////Now only contains strings (of the cat's names) instead of the actual cat objects.
    NSLog(@"***************************");
    NSLog(@"What cat am I trying to delete from screen? %@ and what is his current loyalty? %i <--- All from tryDeletingCat datastruct", tryDeletingCat.name, tryDeletingCat.currLoyaltyCounter);
    tryDeletingCat.currLoyaltyCounter ++;
    NSLog(@"This is trydeletingcat's new loyaltyCounter: %i", tryDeletingCat.currLoyaltyCounter);*/
    
   /* NSLog(@"***************************");
    
    Cats *actualLizard = [[GameData sharedGameData].allCatsInGame objectForKey: catsCurrentlyOnScreen[0]];
    NSLog (@"ActualLizard's name: %@",actualLizard.name);
    NSLog(@"ActuaLizard's current Loyalty Counter %i", actualLizard.currLoyaltyCounter);
    actualLizard.currLoyaltyCounter --;
    NSLog(@" After I subtract ActuaLizard's current Loyalty Counter by 1, I get %i", actualLizard.currLoyaltyCounter);*/

    
    NSLog(@"***************************");


    
    
    //////////////////////////// ^^ SHOWED THAT YOU NEED TO MAKE ALL CHANGES IN CAT PROPERTIES IN THE MASTER CAT ARRAY
    if (howManyCatsOnScreen > 0){
        NSLog(@"HEYYYYYYYYY IN THE IF STATEMENT");
        int randomIntToUse = 5;
        for (int abc = 0; abc < [catsCurrentlyOnScreen count]; abc ++){
            int result = arc4random_uniform(randomIntToUse);
            if (result == 0){ ///// DELETE THE CAT FROM ON SCREEN IF RESULT = O
                NSLog(@"HEYYYYYYYYY RESULT EQUALED 0!!!!");
                NSString *deletedCatName = catsCurrentlyOnScreen[abc];
                Cats *deletedCat = [[GameData sharedGameData].allCatsInGame objectForKey: deletedCatName];
    
                if (deletedCat.currLoyaltyCounter < deletedCat.maxLoyalty){
                    deletedCat.currLoyaltyCounter ++;
                    if (deletedCat.currLoyaltyCounter >= deletedCat.loyaltyThreshold){
                        deletedCat.inClan = 1;
                    }
                }
                
                deletedCat.onScreen = false;
                NSString *associatedItemName = deletedCat.associatedItem;
                DecorativeItems *itemFreedUp = [[GameData sharedGameData].allItemsInGame objectForKey:associatedItemName];
                itemFreedUp.isBeingUsed = NO;
                deletedCat.associatedItem = @"123456";
                int addedPreyPoints = arc4random_uniform(deletedCat.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                NSLog(@"Total PreyPoints = %i", [GameData sharedGameData].preyPoints);
                
                [currCatsAndPosOnScreen removeObjectForKey:catsCurrentlyOnScreen[abc]];
                [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:catsCurrentlyOnScreen[abc]];
                [catsCurrentlyOnScreen removeObjectAtIndex:abc];
                abc --; // all other enteries are shifted to the left
                
            } ///////// END OF CAT DELETION <--- remember to abc --;
        } //// end of for loop
    } //// end of if.
    
    NSLog(@"***************************");

    
    // NOW GO THROUGH EACH CAT IN THE GAME AND PUT THEM IN THE AVAILABLE OR NOT AVAILABLE GROUP.
    // CATS ALREADY ON SCREEN ARE AUTOMATICALLY NOT AVAILABLE.
    NSMutableArray *catsAvailableToGoOnScreen = [[NSMutableArray alloc]init]; // <---- only names of cats, not actual cat objs
    
    /////// TESTING STUFF ON FRIDAY NIGHT BEFORE DUE DATE
    
    /*[catsAvailableToGoOnScreen addObject:@"Lily"];
    [catsAvailableToGoOnScreen addObject:@"Cooper"];
    [catsAvailableToGoOnScreen addObject:@"Birch"];
    [catsAvailableToGoOnScreen addObject: @"Rowan"];*/
    
    ///////////////
    NSMutableArray *catsNotAvailableToGoONScreen = [[NSMutableArray alloc] init];
    NSArray *allCatNames = [[GameData sharedGameData].allCatsInGame allKeys];
    for (int qwe = 0; qwe < [allCatNames count]; qwe ++){
        Cats *catWeAreDealingWith = [[GameData sharedGameData].allCatsInGame objectForKey: allCatNames[qwe]];
        if (catWeAreDealingWith.onScreen == false){
            bool shouldBeAvailable = true;
            if ([catWeAreDealingWith.specificItems count] == 0){
                [catsAvailableToGoOnScreen addObject:catWeAreDealingWith.name];
            }
            else{
                for (int ert = 0; ert<[catWeAreDealingWith.specificItems count]; ert ++){
                    if ([currItemsAndPosOnScreen objectForKey:catWeAreDealingWith.specificItems[ert]] == nil){
                        [catsNotAvailableToGoONScreen addObject:catWeAreDealingWith.name];
                        shouldBeAvailable = false;
                        break;
                        
                    }
                }
                
                if (shouldBeAvailable == true){
                    [catsAvailableToGoOnScreen addObject:catWeAreDealingWith.name];
                }
            }
        }
        
    }
    
    /////// TESTING ON FRIDAY CATS
    
    NSLog (@"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    NSLog(@"All the bloody cats in the catsAvailableToGoOnScreen...should be all the cats! %@", catsAvailableToGoOnScreen);
    NSLog (@"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    
    ////////  CAT TEST WORKED FINE
    
    
    
    
    ///// END OF GOING THROUGH EACH CAT AND PUTTING THEM IN AVAILABLE OR UN-AVAILABLE GROUP.
    
    // GO THROUGH EACH ITEM AND PUT IT IN AVAILABLE FOR USE OR NOT.
    NSMutableArray *itemOnScreenAndNotBeingUsed = [[NSMutableArray alloc]init]; // <-- only contains keys to the items
    NSArray *allTheItemNames = [[GameData sharedGameData].allItemsInGame allKeys];
    for (int rty = 0; rty <[allItemNames count]; rty ++){
        DecorativeItems *itemInQuestion = [[GameData sharedGameData].allItemsInGame objectForKey:allTheItemNames[rty]];
        if (itemInQuestion.isBeingUsed == NO && itemInQuestion.isOnScreen == YES){
            [itemOnScreenAndNotBeingUsed addObject: allTheItemNames[rty]];
        }
        
    }
    
    
    /////// TESTING ON FRIDAY ITEMS
    
     /*NSLog (@"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
     NSLog(@"All the bloody items in the itemOnScreenAndNotBeingUsed...should be none of the items right now! %@", itemOnScreenAndNotBeingUsed);
     NSLog (@"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");*/
    
    //////// ITEM TEST WORKED FINE
    
    
    
    
    
    /////// END OF SORTING ITEMS
    
    //////  IMPLEMENT LOGIC FOR WHICH CATS GET TO GO ON WHICH FREE ITEMS ON SCREEN
    
    /*[itemOnScreenAndNotBeingUsed addObject:@"Pile Of Leaves"];
    [itemOnScreenAndNotBeingUsed addObject:@"Rib Cage"];
    [itemOnScreenAndNotBeingUsed addObject:@"Tree Stump"];
    
    DecorativeItems *pileLeaves = [[GameData sharedGameData].allItemsInGame objectForKey:@"Pile Of Leaves"];
    pileLeaves.itemPosition = @3;
    
    DecorativeItems *ribCage = [[GameData sharedGameData].allItemsInGame objectForKey:@"Rib Cage"];
    ribCage.itemPosition = @3;
    
    DecorativeItems *treeStump = [[GameData sharedGameData].allItemsInGame objectForKey:@"Tree Stump"];
    treeStump.itemPosition = @3;
    
    NSLog(@"#######################################################################");
    NSLog(@"The cat available to go on screen in the 0th position is: %@", catsAvailableToGoOnScreen[0]);
    NSLog(@"The cat available to go on screen in the 1st position is: %@", catsAvailableToGoOnScreen[1]);
    NSLog(@"The cat available to go on screen in the 2nd position is: %@", catsAvailableToGoOnScreen[2]);*/

    
    for (int sdf = 0; sdf < [itemOnScreenAndNotBeingUsed count]; sdf++){
        DecorativeItems *itemTalkedAbout = [[GameData sharedGameData].allItemsInGame objectForKey:itemOnScreenAndNotBeingUsed[sdf]];
        int numOfAvailableCats = [catsAvailableToGoOnScreen count];
        int inputForArc4Uniform = 5*numOfAvailableCats;
        int randomNumGenerated = arc4random_uniform(inputForArc4Uniform);
        NSLog(@"The random number that was generated was: %i", randomNumGenerated);
        if (randomNumGenerated < numOfAvailableCats){
            [currCatsAndPosOnScreen setObject: itemTalkedAbout.itemPosition forKey:catsAvailableToGoOnScreen[randomNumGenerated]];
            [[GameData sharedGameData].CatsAndPosOnScreen setObject:itemTalkedAbout.itemPosition forKey:catsAvailableToGoOnScreen[randomNumGenerated]];
            Cats *catAboutToBeAddedOnScreen = [[GameData sharedGameData].allCatsInGame objectForKey:catsAvailableToGoOnScreen[randomNumGenerated]];
            catAboutToBeAddedOnScreen.onScreen = YES;
            NSLog (@"The cat that was added added to the currCatsAndPos is: %@ at position %@; the item it is associated with is %@", catsAvailableToGoOnScreen[randomNumGenerated], itemTalkedAbout.itemPosition, itemOnScreenAndNotBeingUsed[sdf]);
            [catsAvailableToGoOnScreen removeObjectAtIndex:randomNumGenerated];
            itemTalkedAbout.isBeingUsed = YES;
            
        }
        
    }
    
    NSLog(@"#######################################################################");

    
    /////// END OF CATS ON FREE ITEMS IMPLEMENTATION
    
    
    
    
    ///////////////////////////////// END OF ACTUAL START-SCREEN LOGIC
    
    
    

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
