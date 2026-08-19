//
//  SJMediaCacheServerTests.m
//  SJMediaCacheServerTests
//
//  Created by changsanjiang@gmail.com on 05/30/2020.
//  Copyright (c) 2020 changsanjiang@gmail.com. All rights reserved.
//

@import XCTest;

#import "../../SJMediaCacheServer/Core/Common/MCSNetworkUtils.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDisabledAirPlayAlwaysUsesLoopbackHost {
    XCTAssertEqualObjects([MCSNetworkUtils localServerHostWithAirPlaySupport:NO], @"127.0.0.1");
}

@end
