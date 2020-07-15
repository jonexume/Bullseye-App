//
//  ViewController.swift
//  Bullseye
//
//  Created by Jon Exume on 7/3/20.
//  Copyright © 2020 Jon Exume. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    var score = 0
    var round = 0
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!




    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
        // Do any additional setup after loading the view.
    }
    // Below is for the button that is being pressed.  It has the words Hit me.
    
    @IBAction func showAlert() {
        
         let difference = abs(targetValue - currentValue)
         var points = 100 - difference
         

         // add these lines
         let title: String
         if difference == 0 {
           title = "Perfect!"
            points += 150
         } else if difference < 5 {
           title = "You almost had it!"
         } else if difference < 10 {
           title = "Pretty good!"
         } else {
           title = "Not even close..."
         }
        score += points

         let message = "You scored \(points) points"

         let alert = UIAlertController(title: title,  // change this
                                     message: message,
                              preferredStyle: .alert)

         let action = UIAlertAction(title: "OK", style: .default,
                                    handler: { _ in self.startNewRound() })
         alert.addAction(action)
         present(alert, animated: true, completion: nil)

    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        round = round + 1
        updateLabels()
    }
    // Added the update label
    func updateLabels() {
      targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }

    func startNewGame() {
    score = 0
    round = 0
    startNewRound()
    }
    
    @IBAction func startOver(_ sender: Any) {
        startNewGame()
    }
}


