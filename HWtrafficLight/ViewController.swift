//
//  ViewController.swift
//  HWtrafficLight
//
//  Created by Oleksii Holub on 06.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var buttonOfStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        buttonOfStart.layer.cornerRadius = 20
    }

    @IBAction func buttonOfStartPressed() {
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            buttonOfStart.setTitle("Next", for: .normal)
            print("Red")
            
        } else if yellowLightView.alpha != 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            print("yellow")
            
        } else if greenLightView.alpha != 1 {
            greenLightView.alpha = 1
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            print("green")
        }
    }
    
}

