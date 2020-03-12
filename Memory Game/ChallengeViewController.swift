//
//  ChallengeViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController {

    @IBOutlet weak var lblPanel: UILabel!
    @IBOutlet weak var lblLevel: UILabel!
    @IBOutlet weak var lblLives: UILabel!
    @IBOutlet weak var lblBtnPanel: UIButton!
    
    var level: Level!
    var challengeNumber = 0
    var compareDigit = 0
    var currentNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblLevel.text = level.levelType
        level.createChallenges()
        level.lives = 3
        lblLives.text = String(level.lives)
        lblPanel.text = String(level.challenges[challengeNumber].memorize.map(String.init).joined())
        
        //logging
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
        level.createChallenges()
        dismiss(animated:true, completion: nil)
    }
    @IBAction func btnPanel(_ sender: Any) {
        compareDigit = 0
        lblPanel.backgroundColor = UIColor.white
        lblBtnPanel.setTitle("", for: UIControlState.normal)
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
        //add code to blur numbers
        lblPanel.backgroundColor = UIColor.black
        lblBtnPanel.setTitle("Tap to show again!", for: UIControlState.normal)
        
        //compare digits in sequence and digit pressed
        if level.challenges[challengeNumber].memorize[compareDigit] == currentNum {
            checkWin()
        } else {
            checkLose()
        }
    }
    
    func checkWin(){
        compareDigit += 1
        if compareDigit == level.challenges[challengeNumber].memorize.count {
            print("won the challenge")
            //reset compare digits
            compareDigit = 0
            challengeNumber += 1
            lblPanel.backgroundColor = UIColor.white //change panel color
            lblBtnPanel.setTitle("", for: UIControlState.normal)
            
            if challengeNumber == 3 {  //if completed all 3 challenges
                print("you've completed level " + level.levelType)
                //exit
                level.createChallenges()
                dismiss(animated:true, completion: nil)
            } else {
                //next challenge
                lblPanel.text = String(level.challenges[challengeNumber].memorize.map(String.init).joined())
            }
            
        }
    }
    
    func checkLose(){
        level.lives -= 1
        lblLives.text = String(level.lives)
        
        print("lives left: " + String(level.lives))
        
        if level.lives == 0 { //if there are no more lives
            print("you ran out of lives!")
            level.createChallenges()
            dismiss(animated:true, completion: nil)
        } else { // if there are lives remaining
            print("wrong number! lose a life!")
            compareDigit = 0
            lblPanel.backgroundColor = UIColor.white
            lblBtnPanel.setTitle("", for: UIControlState.normal)
        }
    }
    
    
}
