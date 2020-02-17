//
//  main.m
//  iOS12-intro-to-objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool { // ARC = Automatic Reference Counting (prevetns memory leaks)
        NSLog(@"Hello, %@!", @"Chad"); // Same as print in Swift
    }
    return 0;
}
