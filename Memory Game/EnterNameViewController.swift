//
//  EnterNameViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class EnterNameViewController: UIViewController {

    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //enter adventure button
    @IBAction func btnEnterName(_ sender: UIButton) {
        
        if txtName.text!.isEmpty {
            errorMsg.text = "Please enter a name!"
        } else {
            // instantiate a player with name and store to user defaults
//            let player = Player(Name: txtName.text!)
//            UserDefaults.standard.set(player, forKey: "player")
            
            performSegue(withIdentifier: "moveToMenuSegue", sender: self)
            
            
        }

    }

    // Passing data to another segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let player = Player(Name: txtName.text!)
        
        let destVC: ViewController = segue.destination as! ViewController;
        destVC.player = player;

    }

    

}
