//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    
    NSInteger minimumDollars = 4;
    NSString *getOut = @"I LOVE POTATOES";
    
    NSString *itemToReturn;
    

    if (dollars <= minimumDollars) {
       getOut= (@"get out of my store");
       return getOut;

    }
    
    if (dollars < 6) {
        itemToReturn = @"have some gum";
    } else if (dollars < 1000) {
        itemToReturn = @"have an apple";
    } else if (dollars < 1000000000) {
        itemToReturn = @"have an Apple computer";
    } else {
        itemToReturn = @"have The Big Apple";
    }
    
    
    return itemToReturn;
    
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {

    NSUInteger cost = 24;
    
    cost = self.getsDiscount == YES ? cost * .75 : cost ;
    
    return cost;
}

@end
