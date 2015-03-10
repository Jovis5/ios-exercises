//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"


@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayToRemember = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayToCopy = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatToRemember = floatToRemember;
    
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    return self.arrayToRemember;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.floatToRemember;
}

@end