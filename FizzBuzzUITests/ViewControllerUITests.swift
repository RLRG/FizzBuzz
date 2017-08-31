//
//  FizzBuzzUITests.swift
//  FizzBuzzUITests
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest

class FizzBuzzUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonIncrementsScoreTwice() {
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
}
