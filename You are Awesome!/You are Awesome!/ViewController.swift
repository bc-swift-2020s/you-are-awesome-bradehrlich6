//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Brad Ehrlich on 1/24/20.
//  Copyright © 2020 Brad Ehrlich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    let messages = ["You are Great!", "Good Job!", "I like your shoes!", "Nice face!"]
    var messageCount = 0
    var imageCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()// Do any additional setup after loading the view.
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        imageView.image = UIImage(named: "image\(Int.random(in:0...9))")
    }
    
}
    
    



