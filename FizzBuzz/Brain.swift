//
//  Brain.swift
//  FizzBuzz
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    func isDivisibleBy(divisor div: Int, number num: Int) -> Bool {
        return num % div == 0
    }
    
    func check(number num: Int) -> Move {
        if isDivisibleByFifteen(number: num) {
            return .fizzBuzz
        } else if isDivisibleByThree(number: num) {
            return .fizz
        } else if isDivisibleByFive(number: num){
            return .buzz
        } else {
            return .number
        }
    }
}
