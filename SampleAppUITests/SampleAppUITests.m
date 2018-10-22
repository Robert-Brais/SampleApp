//
//  SampleAppUITests.m
//  SampleAppUITests
//
//  Created by Robert Brais on 10/22/18.
//  Copyright © 2018 Robert Brais. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface SampleAppUITests : XCTestCase

@end

@implementation SampleAppUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testSayHelloWorld {
    
    XCUIElement *window = [[XCUIApplication alloc] init].windows[@"Window"];
    [window.buttons[@"Say hello"] click];
    [window.staticTexts[@"Hello World!"] click];
    
}

-(void) testSayHelloName{
    
    XCUIElement *window = [[XCUIApplication alloc] init].windows[@"Window"];
    [window.textFields[@"Enter your name here..."] typeText:@"Jane Doe"];
    [window.buttons[@"Say hello"] click];
    [window.staticTexts[@"Hello Jane Doe!"] click];
    
}

@end
