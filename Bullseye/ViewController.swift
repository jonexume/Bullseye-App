//
//  ViewController.swift
//  Bullseye
//
//  Created by Jon Exume on 7/3/20.
//  Copyright © 2020 Jon Exume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello World", message: "This is my first app I made", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

}

