//
//  LevelSelectViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class LevelSelectViewController: UIViewController {
    
    let levelEasy = Level(Unlocked: true, Lives: 3, Timer: 100, LevelType: "easy")
    let levelMedium = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "medium")
    let levelHard = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "hard")
    let levelImpossible = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "impossible")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //selecting levels
    @IBAction func btnLevelEasy(_ sender: Any) {
        
        
        
    }
    
    
    //back button
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated:true, completion: nil)
    }
    
    
}
