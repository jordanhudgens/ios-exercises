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
    number = @([number intValue] * 2);
    
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *array = [NSMutableArray array];
    
    if (number < otherNumber) {
        for(int i = number; i <= otherNumber; i++) {
            NSNumber *newNumber = [NSNumber numberWithInt:i];
            [array addObject: newNumber];
        }
    } else {
        for(int i = number; i >= otherNumber; i--) {
            NSNumber *newNumber = [NSNumber numberWithInt:i];
            [array addObject: newNumber];
        }
    }
    
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSInteger num = [arrayOfNumbers[0] integerValue];
    
    for (NSInteger i = 0; i < [arrayOfNumbers count]; i++) {
        if (num > [arrayOfNumbers[i] integerValue])
        {
            num = [arrayOfNumbers[i] integerValue];
        }
    }
    
    return num;
}

@end
