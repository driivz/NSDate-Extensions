//
//  UtilitiesTests.m
//  UtilitiesTests
//
//  Created by Pran Kishore on 27/03/18.
//  Copyright © 2018 Pran Kishore. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+Utilities.h"
@interface UtilitiesTests : XCTestCase

@end

@implementation UtilitiesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSDate * today = [NSDate dateYesterday];
    XCTAssertFalse(today.isToday);
    
}

@end
