//
//  AppDelegate.h
//  Claws
//
//  Created by Libby Goss on 4/21/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//


//////////////// MOVE DATA FROM gameData to startView; then, move that data from startView to GameView
//////////////// place the data in GameView's own variables.....then use those variables to load
//////////////// game in view did load. This way, only the cats and items that were told to be in the
/////////////// screen at the beginning will be on the screen......it will only be intialized once.
#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

