//
//  ViewController.swift
//  dicee
//
//  Created by MattYu on 28/2/2020.
//  Copyright © 2020 MattYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         updateDiceImages()
    }

    @IBAction func rollButoonPressd(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
              
        diceImageView1.image=UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image=UIImage(named: diceArray[randomDiceIndex2])
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

