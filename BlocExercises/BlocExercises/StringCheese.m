//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    return favoriteCheese;
    

}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
   
    NSString *cheeseWithoutCheese = cheeseName;
    NSRange cheeseWithoutSuffix = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseWithoutSuffix.location != NSNotFound) {
        cheeseWithoutCheese =[cheeseName stringByReplacingCharactersInRange:cheeseWithoutSuffix withString:@""];
    }
    return cheeseWithoutCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *numberOfCheese = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    
    if (cheeseCount == 1) {
        NSString *numberOfCheese = [NSString stringWithFormat:@"%ld cheese", cheeseCount];
        return numberOfCheese;
        
    } else {
        NSString *numberOfCheese = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
        return numberOfCheese;
        
    }
    return numberOfCheese ;
}
@end
