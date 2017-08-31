//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UIButton!
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            scoreLabel.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    func play(move mv: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: mv)
        if (response.right) {
            gameScore = response.score
        }
    }

    @IBAction func numberTapped(_ sender: Any) {
        play(move: .number)
    }
    
}

