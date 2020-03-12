//
//  LevelSelectViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class LevelSelectViewController: UIViewController {
    
    var levelEasy = Level(Unlocked: true, Lives: 3, Timer: 100, LevelType: "easy")
    var levelMedium = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "medium")
    var levelHard = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "hard")
    var levelImpossible = Level(Unlocked: false, Lives: 3, Timer: 100, LevelType: "impossible")
    
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
        performSegue(withIdentifier: "easySegue", sender: self)
    }
    @IBAction func btnLevelMedium(_ sender: Any) {
        performSegue(withIdentifier: "mediumSegue", sender: self)
    }
    @IBAction func btnLevelHard(_ sender: Any) {
        performSegue(withIdentifier: "hardSegue", sender: self)
    }
    @IBAction func btnLevelImpossible(_ sender: Any) {
        performSegue(withIdentifier: "impossibleSegue", sender: self)
    }
    
    
    
    // Passing data to another segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC: ChallengeViewController = segue.destination as! ChallengeViewController;
        
        if segue.identifier == "easySegue" {
            destVC.level = levelEasy
        } else if segue.identifier == "mediumSegue" {
            destVC.level = levelMedium
        } else if segue.identifier == "hardSegue" {
            destVC.level = levelHard
        } else if segue.identifier == "impossibleSegue" {
            destVC.level = levelImpossible
        }
        
    }
    
    //back button
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated:true, completion: nil)
    }
    
    
}
