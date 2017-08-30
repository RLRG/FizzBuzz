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
        return (number % 3 == 0) ? true : false
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return (number % 5 == 0) ? true : false
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return (number % 15 == 0) ? true : false
    }
}
