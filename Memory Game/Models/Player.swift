//
//  Player.swift
//  Memory Game
//
//  Created by Maria Lilian Yang on 2020-03-12.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var levelsWon: Int
    
    init(Name: String){
        self.name = Name
        self.levelsWon = 0
        print("Player has been created")
    }
    
//    func playerInput(){
//         print("Player input")
//    }
    
    func incrementLevelsWon(){
        self.levelsWon += 1
     print("Player increment level")
    }
}
