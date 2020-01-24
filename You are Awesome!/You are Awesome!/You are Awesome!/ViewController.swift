//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Brad Ehrlich on 1/24/20.
//  Copyright © 2020 Brad Ehrlich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    let messages = ["You are Great!", "Good Job!", "I like your shoes!", "Nice face!"]
    var messageCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()// Do any additional setup after loading the view.
    }
    

    @IBAction func messageButtonPressed(_ sender: UIButton) {
    if messageCount == (messages.count - 1) {
            messageLabel.text = messages[messages.count - 1]
            messageCount = 0
        }
        else {
            messageLabel.text = messages[messageCount]
            messageCount += 1
        }
    }
    
    

}

