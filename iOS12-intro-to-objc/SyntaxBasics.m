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

- (void) explorePrimitives {
    NSLog(@"Large number: %@", self.largeNumber);
    
    //
    // Primitives - number types
    //
    NSLog(@"---------------Primitives---------------");
    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    int age = 37;
    NSLog(@"You are %i years old", age); // %d
    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long milesFromTheSun = 9325467432967L;
    NSLog(@"We are %li miles from the sun.", milesFromTheSun); // %ld
    // Single precision floating-point, 32-bit number
    float distance = -21.09f;
    NSLog(@"You are %0.2f feet behind me.", distance);
    // Double precision floating-point, 64-bit number
    double distance2 = -21.099;
    NSLog(@"%0.2f feet", distance2);
    // Boolean
    // only two value choices, YES for true, NO for false
    BOOL isOn = NO;
    NSLog(@"isOn %d", isOn);
    NSLog(@"isOn: %@", isOn ? @"YES" : @"NO");
    
    // Math
    //
    // All standard arithmetic operators apply: +, -, *, /, %
    // Integer division, result is always a whole number and not rounded
    int integerDivision = 5 / 4;
    NSLog(@"integerDivision: %d", integerDivision);
    // Double division, 1 double and 1 int operand, result is promoted to double
    double doubleDivision = 5.0 / 4;
    NSLog(@"doubleDivision %0.2f", doubleDivision);
    // Floating point imprecision
    NSLog(@"%.17f", 0.1);
    NSLog(@"%.17f", 4.2 - 4.1);
    // Print statements show floating point numbers aren't as precise as they appear
    //
    
    // NSInteger
    //
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 80;
    NSLog(@"anInteger: %li", (long)anInteger);
    NSLog(@"aPositiveInteger: %li", (unsigned long)aPositiveInteger);
    // autosizes itself based on current platform
    NSLog(@"---------------End Primitives---------------\n\n");
}

- (void) exploreObjects {
    //
    // Objects (class-based types)
    //
    NSLog(@"---------------Objects---------------");
    // NSString
    NSString *lambda = @"Go all in!";
    NSLog(@"%@", lambda);
    // String concatenation/interpolation
    NSString *label = @"The length is";
    int length = 94;
    NSString *lengthString = [NSString stringWithFormat:@"%@ %d", label, length];
    NSLog(@"%@", lengthString);
    // id type used to store an object of any type
    id mysteryObject = @"An NSString Object";
    NSLog(@"%@", [mysteryObject description]);
    mysteryObject = @[@"Apple", @"Microsoft"];
    NSLog(@"%@", [mysteryObject description]);
    NSLog(@"---------------End Objects---------------");
}

- (void) exploreCollectionsWithArray:(NSArray *)shipCaptains {
    
}

- (void) exploreNumbers {
    
}

@end
