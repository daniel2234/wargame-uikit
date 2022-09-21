//
//  ViewController.swift
//  WarGameUIKit
//
//  Created by daniel on 2022-09-20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftView: UIImageView!
    
    @IBOutlet weak var rightView: UIImageView!
    
    @IBOutlet weak var rightLabelScore: UILabel!
    
    @IBOutlet weak var leftLabelScore: UILabel!
    
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        print("Deal tapped.")
        
        //Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Update the views
        leftView.image = UIImage(named: "card\(leftNumber)")
        rightView.image = UIImage(named: "card\(rightNumber)")
        
        print(leftNumber)
        print(rightNumber)
        
        if leftNumber > rightNumber {
            playerScore += 1
            leftLabelScore.text = String(playerScore)
            //show label to show player result
        } else if leftNumber < rightNumber {
            cpuScore += 1
            rightLabelScore.text = String(cpuScore)
            //show label to show cpu result
        } else {
            //show tie label result
        }
    }
}

