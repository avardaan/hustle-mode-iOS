//
//  ViewController.swift
//  hustle-mode
//
//  Created by Vardaan Aashish on 6/20/18.
//  Copyright © 2018 Vardaan Aashish. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    // instance of an audio player
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // specify route to the audio file
        let path = Bundle.main.path(forResource:"hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        // try loading player instance
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when Power Button is pressed
    @IBAction func powerButtonPressed(_ sender: UIButton) {
        // show cloud
        // hide blueBG and button
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        // play sound
        player.play()
        // rocket animation
        UIView.animate(withDuration: 2.3, animations: {
            // animate rocket to following position
            self.rocket.frame = CGRect(x: 0, y: 250, width: 375, height: 200)
        }) { (finished) in
            // completion handler -> show labels
            self.hustleLabel.isHidden = false
            self.onLabel.isHidden = false
        }
    }
    


}

