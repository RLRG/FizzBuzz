//
//  Game.swift
//  FizzBuzz
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

class Game {
    
    var score : Int
    let brain : Brain
    
    init() {
        self.score = 0
        brain = Brain()
    }
    
    func play(move mv: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == mv {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
