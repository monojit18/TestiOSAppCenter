//
//  TestiOSAppCenterUITests.m
//  TestiOSAppCenterUITests
//
//  Created by Monojit Datta on 09/12/18.
//  Copyright © 2018 Monojit Datta. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestiOSAppCenterUITests : XCTestCase
{
    
@private
    
    XCUIApplication* _pApplication;
    
    
}

@end

@implementation TestiOSAppCenterUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    
    _pApplication = [[XCUIApplication alloc] init];
    [_pApplication launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testClickMe
{
    
    XCUIElement* pTextField = [[_pApplication textFields] objectForKeyedSubscript:@"ClickMeTextField"];
    XCUIElement* pClickMeButton = [[_pApplication buttons] objectForKeyedSubscript:@"ClickMeButton"];
    [pTextField tap];
    [pTextField typeText:pClickMeButton.label];
    
    NSString* text = (NSString*)[pTextField value];
    XCTAssert([text isEqualToString:pClickMeButton.label]);
    
    
}

- (void)testViewMe
{
    
    XCUIElement* pClickMeButton = [[_pApplication buttons] objectForKeyedSubscript:@"ClickMeButton"];
    [pClickMeButton tap];
    
    XCUIElement* pViewMeButton = [[_pApplication buttons] objectForKeyedSubscript:@"ViewMeButton"];
    [pViewMeButton tap];
    
    XCUIElement* pDoneButton = [[_pApplication buttons] objectForKeyedSubscript:@"DoneButton"];
    [pDoneButton tap];
    
}

@end
