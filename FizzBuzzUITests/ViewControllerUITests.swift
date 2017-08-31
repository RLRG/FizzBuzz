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
    
    // MARK: - Number button tests
    
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
    
    // MARK: - Fizz button tests
    
    func testTapFizzButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapFizzButtonNotIncrementingScore() {
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        let newScore = app.buttons["numberButton"].label
        XCTAssertEqual(newScore, "0")
    }
    
    // MARK: - Buzz button tests
    
    func testTapBuzzButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapBuzzButtonNotIncrementingScore() {
        let buzzButton = app.buttons["buzzButton"]
        buzzButton.tap()
        let newScore = app.buttons["numberButton"].label
        XCTAssertEqual(newScore, "0")
    }
    
    // MARK: - FizzBuzz button tests
    
    func testTapFizzBuzzButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func testTapFizzBuzzButtonNotIncrementingScore() {
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        fizzBuzzButton.tap()
        let newScore = app.buttons["numberButton"].label
        XCTAssertEqual(newScore, "0")
    }
    
}
