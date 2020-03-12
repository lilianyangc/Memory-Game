//
//  ViewController.swift
//  Memory Game
//
//  Created by Zachery Ten Hoope on 2020-03-11.
//  Copyright © 2020 Zachery Ten Hoope. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player: Player!;
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //   lblName.text = name;
        
        // ASsign name from passed data from segue
//        lblName.text = String(player.name!)
//        print("\(player.name)")
           lblName.text = String(player.name);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
}

