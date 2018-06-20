//
//  ViewController.swift
//  hustle-mode
//
//  Created by Vardaan Aashish on 6/20/18.
//  Copyright © 2018 Vardaan Aashish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var onLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when Power Button is pressed
    @IBAction func powerButtonPressed(_ sender: UIButton) {
        // these elements are hidden by default
        // pressing the button would unhide them
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = false
        powerButton.isHidden = false
    }
    


}

