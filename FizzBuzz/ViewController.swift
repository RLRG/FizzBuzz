//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    var gameScore: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
    }

    func play(move mv: String) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: mv)
        gameScore = response.score
    }

}

