//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Rodrigo López-Romero Guijarro on 31/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        viewController = nil
        super.tearDown()
    }

    // Dummy test to check that the setUp was right
    func test() {
        XCTAssertTrue(true)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: "1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move: "1")
        viewController.play(move: "2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testMoveFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testMoveFizzNotIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: "3")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testMoveBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testMoveBuzzNotIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: "5")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 4)
    }
    
    func testMoveFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testMoveFizzBuzzNotIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: "15")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 14)
    }
}
