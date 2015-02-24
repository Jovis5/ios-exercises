//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    
    BOOL areTheyEqual = [string1 isEqualToString:string2];
    NSLog (@"%@", areTheyEqual ? @"Yes" : @"No");
    
    return areTheyEqual;
    
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
   
    BOOL areTheyEqual = [number1 isEqual: number2];
    NSLog(@"%@", areTheyEqual ? @"Yes" : @"No");
    
    return areTheyEqual;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    
    BOOL greaterInt = integer1 > integer2;
    
    return greaterInt;
}

@end
