//
//  Level.swift
//  Memory Game
//
//  Created by Maria Lilian Yang on 2020-03-12.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import Foundation

class Level {
    var unlocked: Bool
    var lives: Int
    var timer: TimeInterval
    var challenges: [Challenge]
    var bestTime: TimeInterval
    var levelCompleted : Bool
    var levelType: String
    
    init(Unlocked: Bool, Lives:Int, Timer: TimeInterval, LevelType: String){
        self.unlocked = Unlocked
        self.lives = Lives
        self.timer = Timer
        self.bestTime = 0
        self.levelCompleted = false
        self.levelType = LevelType
        self.challenges = []
        print("Level " + LevelType + " has been created!")
    }
    
    
    func checkIfChallengCompleted(){
        print(" Check If Challeng Completed!")
    }
    
    
    func subtractLife(){
        
        if self.lives > 0 {
            self.lives -= 1
            print("Life subtracted")
        }
    
    }
    
    func createChallenges(){
        
        // instantiate 3 challenges
        // push the challenges in the array
        var digits: Int
        if levelType == "easy" {
            digits = 4
        } else if levelType == "medium" {
            digits = 7
        } else if levelType == "hard" {
            digits = 9
        } else {
            digits = 14
        }
        
        for n in 0...2 {
            let challenge = Challenge(NumLength: digits + n) //create a challenge instance
            self.challenges.append(challenge)
        }
        
    }
    
}
