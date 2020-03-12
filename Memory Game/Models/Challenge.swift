//
//  Challenge.swift
//  Memory Game
//
//  Created by Maria Lilian Yang on 2020-03-12.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import Foundation

class Challenge {
    
    var numLength: Int //number of digits to memorize
    var memorize: String //actual digit sequence to memorize
    var challengeWon: Bool
    
    init(NumLength: Int){
        self.numLength = NumLength
        self.memorize = ""
        self.challengeWon = false
        generateChallenge()
    }
    
    func checkUserInput(){
        
    }
    
    func generateChallenge(){
        for _ in 1...numLength {
            memorize = memorize + String(Int(arc4random_uniform(10)))
        }
    }
    
}