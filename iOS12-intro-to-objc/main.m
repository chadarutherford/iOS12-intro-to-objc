//
//  main.m
//  iOS12-intro-to-objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SyntaxBasics.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool { // ARC = Automatic Reference Counting (prevetns memory leaks)
        NSLog(@"Hello, %@!", @"Chad"); // Same as print in Swift
        
        SyntaxBasics * basics = [[SyntaxBasics alloc] initWithLargeNumber:@9223372036];
        
        [basics explorePrimitives];
        [basics exploreObjects];
        
        [basics exploreCollectionsWithArray:@[@"Malcolm Reynolds",
                                              @"Jean-Luc Picard",
                                              @"James T. Kirk",
                                              @"Kathryn Janeway"]];
        
        [basics exploreNumbers];
    }
    return 0;
}
