//
//  GameData.m
//  Claws
//
//  Created by Libby Goss on 4/23/16.
//  Copyright © 2016 nyu.edu. All rights reserved.
//

#import "GameData.h"

@implementation GameData

static NSString* const SSGameDataHighScoreKey = @"highScore";
static NSString* const SSGameDataTotalTestArray = @"totalTestArray";
static NSString* const SSGameDataCatsOnScreen = @"catsOnScreen1";
static NSString* const SSGameDataItemsOnScreen = @"itemsOnScreen1";
static NSString* const SSGameDataAllCatsInGame = @"allCatsInGame";
static NSString* const SSGameDataAllItemsInGame = @"allItemsInGame";
static NSString* const SSGameDataPreyPoints = @"preyPoints";

///////// NEED TO ENCODE SPECIFIC ITEMS AND FOOD
- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeInt:self.highScore forKey: SSGameDataHighScoreKey];
    [encoder encodeObject:self.testArray forKey:SSGameDataTotalTestArray];
    [encoder encodeObject: self.CatsAndPosOnScreen forKey: SSGameDataCatsOnScreen];
    [encoder encodeObject:self.ItemsAndPosOnScreen forKey:SSGameDataItemsOnScreen];
    [encoder encodeObject:self.allCatsInGame forKey:SSGameDataAllCatsInGame];
    [encoder encodeObject:self.allItemsInGame forKey:SSGameDataAllItemsInGame];
    [encoder encodeInt: self.preyPoints forKey: SSGameDataPreyPoints];
    
    
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    self = [self init];
    if (self) {
        _highScore = [decoder decodeIntForKey: SSGameDataHighScoreKey];
        _testArray = [decoder decodeObjectForKey: SSGameDataTotalTestArray];
        _CatsAndPosOnScreen = [decoder decodeObjectForKey: SSGameDataCatsOnScreen];
        _ItemsAndPosOnScreen = [decoder decodeObjectForKey: SSGameDataItemsOnScreen];
        _allCatsInGame = [decoder decodeObjectForKey: SSGameDataAllCatsInGame];
        _allItemsInGame = [decoder decodeObjectForKey: SSGameDataAllItemsInGame];
        _preyPoints = [decoder decodeIntForKey: SSGameDataPreyPoints];
        
        
    }
    return self;
}

+(NSString*)filePath
{
    static NSString* filePath = nil;
    if (!filePath) {
        filePath =
        [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
         stringByAppendingPathComponent:@"gamedata"];
    }
    return filePath;
}

+(instancetype)loadInstance
{
    NSData* decodedData = [NSData dataWithContentsOfFile: [GameData filePath]];
    if (decodedData) {
        GameData* gameData = [NSKeyedUnarchiver unarchiveObjectWithData:decodedData];
        return gameData;
    }
    
    return [[GameData alloc] init];
}

-(void)save
{
    NSData* encodedData = [NSKeyedArchiver archivedDataWithRootObject: self];
    [encodedData writeToFile:[GameData filePath] atomically:YES];
}



/// help from https://www.raywenderlich.com/63235/how-to-save-your-game-data-tutorial-part-1-of-2

+ (instancetype)sharedGameData {
    static id sharedInstance = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self loadInstance];
    });
    
    return sharedInstance;
}

-(void)reset
{
    self.numClicks = 0;
}


@end
