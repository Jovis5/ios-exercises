//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSString *MyNumber = @"";

    if (number < otherNumber){
        while (number <= otherNumber){
            
            MyNumber = [MyNumber stringByAppendingFormat: @"%ld", number];
            NSLog(@"%@", MyNumber);
            number = number + 1;
        }
    }else if (number > otherNumber){
        while (otherNumber <= number) {
           
            MyNumber = [MyNumber stringByAppendingFormat: @"%ld", otherNumber];
            NSLog(@"%ld", (long) MyNumber);
            otherNumber = otherNumber + 1;
        }
    }else if (number == otherNumber){
            NSLog (@"%ld", (long) number);
            MyNumber = [MyNumber stringByAppendingFormat: @"%ld", number];
}
    
    return MyNumber;
    
}

@end
