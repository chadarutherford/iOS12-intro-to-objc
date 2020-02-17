//
//  SyntaxBasics.h
//  iOS12-intro-to-objc
//
//  Created by Chad Rutherford on 2/17/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SyntaxBasics : NSObject

// number property (object)
@property NSNumber *largeNumber;

- (instancetype) initWithLargeNumber: (NSNumber *) largeNumber;
- (void) explorePrimitives;
- (void) exploreObjects;
- (void) exploreCollectionsWithArray: (NSArray *) shipCaptains;
- (void) exploreNumbers;

@end
