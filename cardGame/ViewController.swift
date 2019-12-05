//
//  ViewController.swift
//  cardGame
//
//  Created by Kim Yeon Jeong on 2019/11/28.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreView: UILabel!
    
    @IBOutlet weak var cpuScoreView: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftnumber)")
        rightImageView.image = UIImage(named:"card\(rightnumber)")
        
        if leftnumber > rightnumber {
            
            leftScore += 1
            playerScoreView.text = String(leftScore)
        }
        else if leftnumber < rightnumber{
            
            rightScore += 1
            cpuScoreView.text = String(rightScore)
        }
        else {
            leftScore = rightScore
        
        }
    }
}

