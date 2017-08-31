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
}
