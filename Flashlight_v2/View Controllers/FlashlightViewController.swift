//
//  FlashlightViewController.swift
//  Flashlight_v2
//
//  Created by Taylor Bills on 1/22/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import UIKit

class FlashlightViewController: UIViewController {

    // MARK:    Properties
    
    var isOn = true
    
    @IBOutlet weak var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK:    Main Functions
    
    // Toggle
    func toggleIsOn() -> Bool {
        if isOn == false {
            view.backgroundColor = UIColor.white
            toggleButton.setTitle("OFF", for: .normal)
            toggleButton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = .black
            toggleButton.setTitle("ON", for: .normal)
            toggleButton.setTitleColor(.white, for: .normal)
        }
        return isOn
    }
    
    // MARK:    Actions
    
    // On button tapped
    @IBAction func buttonTapped(_ sender: Any) {
        isOn = !isOn
        toggleIsOn()
    }
}

