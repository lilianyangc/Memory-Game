//
//  ChallengeViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    var level: Level!
    @IBOutlet weak var lblPanel: UILabel!
    var challengeNumber = 0
    var compareDigit = 0
    var currentNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        level.createChallenges()
        lblPanel.text = String(level.challenges[challengeNumber].memorize.map(String.init).joined())
        print(level.levelType + " level selected")
        print(level.challenges[0].memorize.map(String.init).joined())
        print(level.challenges[1].memorize.map(String.init).joined())
        print(level.challenges[2].memorize.map(String.init).joined())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnBack(_ sender: UIButton) {
        dismiss(animated:true, completion: nil)
    }
    
    @IBAction func btnNum1(_ sender: Any) {
        currentNum = 1
        checkIfNumGood()
    }
    @IBAction func btnNum2(_ sender: Any) {
        currentNum = 2
        checkIfNumGood()
    }
    @IBAction func btnNum3(_ sender: Any) {
        currentNum = 3
        checkIfNumGood()
    }
    @IBAction func btnNum4(_ sender: Any) {
        currentNum = 4
        checkIfNumGood()
    }
    @IBAction func btnNum5(_ sender: Any) {
        currentNum = 5
        checkIfNumGood()
    }
    @IBAction func btnNum6(_ sender: Any) {
        currentNum = 6
        checkIfNumGood()
    }
    @IBAction func btnNum7(_ sender: Any) {
        currentNum = 7
        checkIfNumGood()
    }
    @IBAction func btnNum8(_ sender: Any) {
        currentNum = 8
        checkIfNumGood()
    }
    @IBAction func btnNum9(_ sender: Any) {
        currentNum = 9
        checkIfNumGood()
    }
    @IBAction func btnNum0(_ sender: Any) {
        currentNum = 0
        checkIfNumGood()
    }
    
    func checkIfNumGood(){
        print("current Number")
        print(currentNum)
        print("compare digit:")
        print(String(level.challenges[challengeNumber].memorize[compareDigit]))
    }
    
    
    
}
