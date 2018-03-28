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

@property (strong, nonatomic, nonnull) NSDateFormatter * formatter;

@end

@implementation UtilitiesTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.formatter = [[NSDateFormatter alloc]init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testToday{
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSDate * today = [NSDate date];
    XCTAssertTrue(today.isToday);
    XCTAssertFalse(today.isYesterday);
//    XCTAssertFalse(today.isInPast);
//    XCTAssertFalse(today.isInFuture);
//    XCTAssertFalse(today.isLastWeek);
//    XCTAssertFalse(today.isLastYear);
//    XCTAssertFalse(today.isNextWeek);
}

-(void)testSameWeek {
    
    NSDate * aDateFromLastweek = [NSDate dateWithDaysFromNow:8];
    XCTAssertFalse([aDateFromLastweek isSameWeekAsDate:[NSDate date]]);
    XCTAssertTrue([aDateFromLastweek isSameWeekAsDate:[NSDate dateWithDaysFromNow:10]]);
    
    //Edge case 1 two days from the same week in different month.
    self.formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss Z";
    NSDate * point1 = [self.formatter dateFromString:@"2018-02-28 20:09:00 +0530"];
    NSDate * point2 = [self.formatter dateFromString:@"2018-03-01 20:09:00 +0530"];
 
    XCTAssertTrue([point1 isSameWeekAsDate:point2]);
    
    //Edge case 2 two days from the same week in different year.
    point1 = [self.formatter dateFromString:@"2017-12-31 20:09:00 +0530"];
    point2 = [self.formatter dateFromString:@"2018-01-01 20:09:00 +0530"];
    
    XCTAssertTrue([point1 isSameWeekAsDate:point2]);
}

@end
