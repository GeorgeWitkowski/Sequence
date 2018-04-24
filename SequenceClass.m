//
//  SequenceClass.m
//  Sequence
//
//  Created by George on 24.04.2018.
//  Copyright © 2018 George Witkowski. All rights reserved.
//

#import "SequenceClass.h"

@implementation SequenceClass
@synthesize array;

- (NSNumber*) summ {
    return [array valueForKeyPath:@"@sum.self"];
}


- (void)dealloc {
    [array release];
    [super dealloc];
}

@end
