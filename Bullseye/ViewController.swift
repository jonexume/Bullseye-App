//
//  ViewController.swift
//  Bullseye
//
//  Created by Jon Exume on 7/3/20.
//  Copyright © 2020 Jon Exume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK Dokey", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }


}

