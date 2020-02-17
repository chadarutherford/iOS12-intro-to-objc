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
    NSLog(@"---------------Collections---------------");
    // Array - ordered collection of objects, immutable
    NSLog(@"%@", shipCaptains[0]);
    // Array comparison
    NSArray *sameCaptains = @[@"Malcolm Reynolds",
                              @"Jean-Luc Picard",
                              @"James T. Kirk",
                              @"Kathryn Janeway"];
    if ([shipCaptains isEqualToArray:sameCaptains]) {
        NSLog(@"The arrays are equal");
    } else {
        NSLog(@"The arrays are not equal");
    }
    
    for(int i = 0; i < shipCaptains.count; i++) { // C-style
        NSLog(@"Captain on the bridge: %@", shipCaptains[i]);
    }
    
    for (NSString *captain in shipCaptains) {
        NSLog(@"Captain on the bridge: %@", captain);
    }
    // Check element for membership
    if ([shipCaptains containsObject:@"Kathryn Janeway"]) {
        NSLog(@"USS Voyager reporting for duty");
    }
    // Find index of object
    NSLog(@"Index of James T. Kirk %lu", [shipCaptains indexOfObject:@"James T. Kirk"]);
    
    //  NSMutableArray - Same as above NSArray type, except can be mutated
    // note: array literal syntax can't be used for NSMutableArray
    NSMutableArray *mutableShipCaptains = [[NSMutableArray alloc] initWithObjects:@"Malcolm Reynolds", @"James T. Kirk", nil];
    [mutableShipCaptains addObject:@"Han Solo"];
    [mutableShipCaptains addObjectsFromArray:@[@"Jean-Luc Picard", @"Kathryn Janeway"]];
    NSLog(@"%@", mutableShipCaptains);
    
    // Dictionary - unordered collection of key-value pairs, immutable
    NSDictionary *occupations = @{@"Malcolm" : @"Captain", @"Kaylee" : @"Mechanic"};
    NSLog(@"%@", [occupations objectForKey:@"Malcolm"]);
    
    // NSMutableDictionary - same as above, but can be mutated
    // note: dictionary literal syntax can't be used for NSMutableDictionary
    NSMutableDictionary *mutableOccupations = [occupations mutableCopy];
    [mutableOccupations setObject:@"Public Relations" forKey:@"Jayne"];
    NSLog(@"%@", mutableOccupations);
    
    NSLog(@"---------------End Collections---------------");
}

- (void)exploreNumbers {
    //
    // NSNumber, a lightweight wrapper around the number primitives
    //
    NSLog(@"---------------NSNumber---------------");
    // Once converted to NSNumber, value can be converted back
    // to a primitive with methods shown below
    NSNumber *aBool = [NSNumber numberWithBool:NO];
    NSLog(@"%@", [aBool boolValue] ? @"YES" : @"NO");
    NSNumber *intAsNumber = [NSNumber numberWithInt:2147483647];
    NSLog(@"%i", [intAsNumber intValue]);
    NSNumber *longAsNumber = [NSNumber numberWithLong:9223372036854775807];
    NSLog(@"%li", [longAsNumber longValue]);
    NSNumber *floatAsNumber = [NSNumber numberWithFloat:26.99f];
    NSLog(@"%f", [floatAsNumber floatValue]);
    NSNumber *doubleAsNumber = [NSNumber numberWithDouble:26.99];
    NSLog(@"%f", [doubleAsNumber doubleValue]);
    // It's also possible to convert an NSNumber to a string
    NSString *asString = [self.largeNumber stringValue];
    NSLog(@"%@", asString);
    // The following literal shortcuts allow for easier NSNumber
    // initialization compared to the above methods
    NSNumber *boolLiteral = @NO;
    NSNumber *intLiteral = @42;
    NSNumber *longLiteral = @9223372036854775807L;
    NSNumber *floatLiteral = @26.99F;
    NSNumber *doubleLiteral = @26.99;
    NSLog(@"bool: %@, int: %@, long: %@, float: %@, double: %@", boolLiteral, intLiteral, longLiteral, floatLiteral, doubleLiteral);
    NSNumber *aNumber = @12.5;
    NSNumber *anotherNumber = @12.5;
    // Because both values are objects, == doesn't work in the usual way
    if (aNumber == anotherNumber) {
        NSLog(@"Numbers are equal");
    }
    else {
        NSLog(@"Numbers are not equal");
    }
    // NSNumber has a method for equating two number objects instead
    if ([anotherNumber isEqualToNumber:aNumber]) {
        NSLog(@"Numbers are equal");
    }
    else {
        NSLog(@"Numbers are not equal");
    }
    NSLog(@"---------------End NSNumber---------------");
}

@end
