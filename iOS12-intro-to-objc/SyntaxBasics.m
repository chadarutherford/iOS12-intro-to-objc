//
//  SyntaxBasics.m
//  iOS12-intro-to-objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import "SyntaxBasics.h"

@implementation SyntaxBasics

- (instancetype) initWithLargeNumber:(NSNumber *)largeNumber {
    self = [super init];
    if (self) {
        _largeNumber = largeNumber;
    }
    return self;
}

@end
