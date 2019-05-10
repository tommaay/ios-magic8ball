//
//  ViewController.swift
//  Magic 8ball
//
//  Created by Tommy Huynh on 5/9/19.
//  Copyright © 2019 Tommy Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    
    // interface builder outlet
    @IBOutlet weak var imageView: UIImageView!
    
    // interface builder action
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    // action to take when app loads
    override func viewDidLoad() {
        super.viewDidLoad()

        newBallImage()
    }
    
    // randomize image function
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    // shake method
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

