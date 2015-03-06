//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    id trekFavoriteDrink = characterDictionary[@"favorite drink"];
    if (trekFavoriteDrink != nil && [trekFavoriteDrink isKindOfClass:[NSString class]]) {
        NSLog(@"Favorite Drink is: %@", trekFavoriteDrink);
        }
    return trekFavoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    for (NSDictionary *dictionary in charactersArray) {
        NSString *favoriteDrink = dictionary[@"favorite drink"];
        [array addObject:favoriteDrink];
    }
    return array;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    NSMutableDictionary *trekDictionary = [characterDictionary mutableCopy];
    [trekDictionary setObject:@"I am king of the world!" forKey:@"quote"];
    NSLog(@"my new quote: %@", trekDictionary [@"quote"]);
    
    return trekDictionary;
    }

@end
