//
//  AddFoodScreen.m
//  Claws
//
//  Created by Jonathan Chua on 5/12/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "AddFoodScreen.h"
#import "GameViewController.h"
#import "Food.h"
#import "currentStateGameData.h"
#import "Cats.h"
#import "AddFoodScreen.h"

@interface AddFoodScreen ()

@end

@implementation AddFoodScreen


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _foodName.text = _addFood;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"FoodAdded"]) {
        //////// Add that food to the screen
        GameViewController *controller = [segue destinationViewController];
        controller.foodToAddFromInventory = _addFood;
        NSArray *keyArrayFoods = [currFoodsAndPosOnScreen allKeys];
        for (int chf=0; chf< [keyArrayFoods count]; chf++) {
            Food *foodDeactivation = keyArrayFoods[chf];
            foodDeactivation.isOnScreen = NO;
        }
        Food *actualFoodToBeAdded = [[GameData sharedGameData].allFoodInGame objectForKey:_addFood];
        actualFoodToBeAdded.isOnScreen = YES;
    }
    
    /*
    if ([[segue identifier] isEqualToString:@"FoodAdded"]) {
        GameViewController *controller = [segue destinationViewController];
        controller.foodToAddFromInventory = _addFood;  ///// MIGHT NOT NEED THIS
        int howManyFoodsOnScreenNow = [[GameData sharedGameData].FoodAndPosOnScreen count];
        NSArray *allFoodNamesOnScreen = [[GameData sharedGameData].FoodAndPosOnScreen allKeys];
        for (int thy = 0; thy < howManyFoodsOnScreenNow; thy++){ //// DEAL WITH ITEM TO BE DELETED
            NSNumber *positionOfFoodBeingDiscussed = [[GameData sharedGameData].FoodAndPosOnScreen objectForKey:allFoodNamesOnScreen[thy]];
            if ([positionOfFoodBeingDiscussed isEqual:@1]){
                [[GameData sharedGameData].FoodAndPosOnScreen removeObjectForKey:allFoodNamesOnScreen[thy]];
                [currFoodsAndPosOnScreen removeObjectForKey:allFoodNamesOnScreen[thy]];
                Food *actualFoodThatWasDeleted = [[GameData sharedGameData].allFoodInGame objectForKey:allFoodNamesOnScreen[thy]];
                actualFoodThatWasDeleted.associatedCat = @"45678";
                actualFoodThatWasDeleted.isOnScreen = NO;
                actualFoodThatWasDeleted.isBeingUsed = NO;
                actualFoodThatWasDeleted.foodPosition = @0;
                
            } // end if
        }// end for ---- end of dealing with Item to be deleted
    
        int howManyCatsOnScreenNow = [[GameData sharedGameData].CatsAndPosOnScreen count];
        NSArray *allCatNamesOnScreen = [[GameData sharedGameData].CatsAndPosOnScreen allKeys];
        for (int iop = 0; iop <howManyCatsOnScreenNow; iop++){
            NSNumber *positionOfCatBeingDiscussed = [[GameData sharedGameData].CatsAndPosOnScreen objectForKey:allCatNamesOnScreen[iop]];
            if ([positionOfCatBeingDiscussed isEqual:@1]){
                [[GameData sharedGameData].CatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                [currCatsAndPosOnScreen removeObjectForKey:allCatNamesOnScreen[iop]];
                Cats *actualCatToBeDeleted = [[GameData sharedGameData].allCatsInGame objectForKey:allCatNamesOnScreen[iop]];
                actualCatToBeDeleted.associatedItem = @"123456";
                actualCatToBeDeleted.onScreen = NO;
                if (actualCatToBeDeleted.currLoyaltyCounter < actualCatToBeDeleted.maxLoyalty){
                    actualCatToBeDeleted.currLoyaltyCounter ++;
                    if (actualCatToBeDeleted.currLoyaltyCounter >= actualCatToBeDeleted.loyaltyThreshold){
                        actualCatToBeDeleted.inClan = 1;
                    }
                    
                }
                
                int addedPreyPoints = arc4random_uniform(actualCatToBeDeleted.currLoyaltyCounter + 1);
                [GameData sharedGameData].preyPoints += addedPreyPoints;
                
                
            } //if
        } // end for ----- end of dealing with Cat to be Deleted
        
        //////////// ADD IN THE ACTUAL ITEM NOW
        [[GameData sharedGameData].FoodAndPosOnScreen setObject:@1 forKey: _addFood];
        [currFoodsAndPosOnScreen setObject:@1 forKey:_addFood];
        Food *actualFoodToBeAdded = [[GameData sharedGameData].allFoodInGame objectForKey:_addFood];
        actualFoodToBeAdded.foodPosition = @1;
        if([actualFoodToBeAdded.associatedCat isEqualToString:@"45678"]){
            actualFoodToBeAdded.isBeingUsed = NO;
        }
        else{
            [[GameData sharedGameData].CatsAndPosOnScreen setObject:@1 forKey:actualFoodToBeAdded.associatedCat];
        }
        actualFoodToBeAdded.isOnScreen = YES;
     
        
    } //end if 1stPosition
    */
    
    //////////////////////
    
    
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
}

@end

