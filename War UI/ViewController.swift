//
//  ViewController.swift
//  War UI
//
//  Created by Ketan Choyal on 03/11/18.
//  Copyright © 2018 Ketan Choyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var dealButton: UIButton!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func dealTapped(_ sender: UIButton) {
        
        //check which player won

        
        //generate random numbers
        let leftrandomnumber = arc4random_uniform(12) + 2
        
        let rightrandomnumber = arc4random_uniform(12) + 2
        
        //setting the image
        leftImageView.image = UIImage(named: "card\(leftrandomnumber)")
        
        rightImageView.image = UIImage(named: "card\(rightrandomnumber)")
        
        //camparing the numbers
        
        if leftrandomnumber > rightrandomnumber
        {
            //increasing the score
            leftScore += 1
            
            //changing the label
            leftScoreLabel.text = String(leftScore)
            
        }
        
        else if rightrandomnumber > leftrandomnumber
        {
            //increasing the Score
            rightScore += 1
            
            //changing the label
            rightScoreLabel.text = String(rightScore)
        }
        
        else if leftrandomnumber == rightrandomnumber
        {
            
        }
        
        
    }
    

}

