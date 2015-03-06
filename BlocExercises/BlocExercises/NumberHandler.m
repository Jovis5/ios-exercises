//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger numberTimesTwo = [number integerValue];
    numberTimesTwo *=2;
    NSNumber *newNumber = [NSNumber numberWithInteger:numberTimesTwo];
    return newNumber;
    
}
- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *myNumbers = [NSMutableArray array];
    
    for (NSInteger newNumber = number; newNumber <= otherNumber; newNumber++) {
            [myNumbers addObject:[NSNumber numberWithInt: newNumber]];
    };
    
    return myNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
 
    NSInteger littleNum = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger newInt = [number integerValue];
        if (newInt < littleNum)
            littleNum = newInt;
            }
    return littleNum;
}

@end
