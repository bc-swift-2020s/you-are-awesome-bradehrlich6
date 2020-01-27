//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Brad Ehrlich on 1/24/20.
//  Copyright © 2020 Brad Ehrlich. All rights reserved.
//

import UIKit
import AVFoundation 

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    let messages = ["You are Great!", "Good Job!", "I like your shoes!", "Nice face!"]
    var messageCount = 0
    var imageCount = 0
    var totalImages = 9
    var soundCount = 0
    var audioPlayer = AVAudioPlayer()
    var totalSoundNum = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()// Do any additional setup after loading the view.
    }
    func nonRepeating(number: Int, limit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in:0...limit)
            
        } while number == newNumber
        return newNumber
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name) {
        do{
            try audioPlayer = AVAudioPlayer(data: sound.data)
            audioPlayer.play()
        } catch{
            print("Error: \(error.localizedDescription) Could not intialize AudioPlaer Object")
        }
            
        } else {
            print("ERROR: Could not read data from file sound0")
        }
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        messageCount = nonRepeating(number: messageCount, limit: messages.count - 1)
        messageLabel.text = messages[messageCount]
        
        imageCount = nonRepeating(number: imageCount, limit: totalImages - 1)
        imageView.image = UIImage(named: "image\(imageCount))")
        
        soundCount = nonRepeating(number: soundCount, limit: totalSoundNum - 1)
        playSound(name: "sound\(soundCount)")

    }
    
}
    
    



