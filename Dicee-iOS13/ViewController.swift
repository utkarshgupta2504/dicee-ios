//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Utkarsh Gupta on 21/04/2024.

//

import UIKit

class ViewController: UIViewController {

    // IB : Interface Builder
    // This is used to connect to the user interface
    // An Outlet connection generally is for appearance
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages : [UIImage] = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Use #imageLiteral( to prompt the image popup
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
    }

    // IB Action is a connection for an action (event)
    @IBAction func onRollPressed(_ sender: Any) {
        diceImageView1.image = diceImages.randomElement()
        diceImageView2.image = diceImages.randomElement()
    }
    
}

