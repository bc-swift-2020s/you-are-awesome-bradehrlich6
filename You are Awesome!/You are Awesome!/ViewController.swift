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
    var messageCount = -1
    var imageCount = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()// Do any additional setup after loading the view.
    }
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        var newMessageCount: Int
        repeat{
            newMessageCount = Int.random(in: 0...messages.count - 1)
        } while messageCount == newMessageCount
        messageLabel.text = messages[messageCount]
        
        var newImageCount: Int
        repeat {
            newImageCount = Int.random(in:0...9)
        } while imageCount == newImageCount
        imageCount = newImageCount
        
        imageView.image = UIImage(named: "image\(imageCount))")
    }
    
}
    
    



