//
//  SequenceClass+LengthCategory.m
//  Sequence
//
//  Created by George on 24.04.2018.
//  Copyright © 2018 George Witkowski. All rights reserved.
//

#import "SequenceClass+LengthCategory.h"

@implementation SequenceClass (LengthCategory)

- (int) sequenceLength{
    NSArray *sortedSequence = [NSArray arrayWithArray:
                               [[self array] sortedArrayUsingComparator:
                                ^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return ([obj1 compare:obj2]);
    }]];
    
    int min = [sortedSequence[0] intValue];
    int sequenceLength = 1;
    
    NSMutableArray* mutableArray = [NSMutableArray array];
    [mutableArray addObject: [NSNumber numberWithInt:min]];
        for(NSNumber *i in sortedSequence) {
            int intI = [i intValue];
            if((min+1) == intI) {
                sequenceLength++;
                min = intI;
                [mutableArray addObject: [NSNumber numberWithInt:min]];
            }
        }
        [self setArray:mutableArray];
        return sequenceLength;
    }

@end
