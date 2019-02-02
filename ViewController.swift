//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kenneth Brisco on 2/2/19.
//  Copyright © 2019 Scodavinci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray  = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
      randomBallNumber = Int.random(in: 0 ... 4)
     imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }

    
    
}

