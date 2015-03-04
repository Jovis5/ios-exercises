//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *trekCharacters = [characterString componentsSeparatedByString:@";"];
    [trekCharacters enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"#%ld: %@", idx + 1, obj);
         }];
    return trekCharacters;
    
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *trekPeople = [characterArray componentsJoinedByString:@";"];
    NSLog(@"%@", trekPeople);
    
    return trekPeople;
    
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *trekSort = [characterArray mutableCopy];

    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:0 ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [trekSort sortUsingDescriptors:@[sortDescriptor]];
    
    return trekSort;
    
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    BOOL trekFound = NO;
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    
    [characterArray filteredArrayUsingPredicate:containsWorf];
        for (NSString *task in characterArray) {
        NSLog(@"%@", task);
            trekFound = YES;
    }
    return trekFound;    
}

@end
