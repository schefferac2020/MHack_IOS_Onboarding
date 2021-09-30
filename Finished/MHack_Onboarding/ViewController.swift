//
//  ViewController.swift
//  MHack_Onboarding
//
//  Created by Drew Scheffer on 9/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    let lowerbound: Int = 1
    let upperBound: Int = 50
    
    var userGuess: Int = 1
    var magicNumber: Int!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessSlider: UISlider!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumber()
    }
    
    func generateRandomNumber(){
        //magicNumber = Int.random(in: lowerbound...upperBound)
        magicNumber = 22
    }
    
    func checkGuess() {
        if userGuess < magicNumber {
            titleLabel.text = "Too LOW!! You're literally the most trash guesser that I've ever seen"
        } else if userGuess > magicNumber {
            titleLabel.text = "Too High!! Could you be any WORSE"
        }else{
            displayWinCondition()
            resetScreen()
        }
    }
    
    func displayWinCondition() {
        let alert = UIAlertController(title: "Did you bring your towel?", message: "Can add a message here. You used ___ guesses", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    func resetScreen(){
        titleLabel.text = "Guess the Number!"
        guessSlider.value = 1
        userGuess = 1
        userGuessLabel.text = String(1)
    }
    
    
    //IB Actions
    
    @IBAction func guessSliderChanged(_ sender: Any) {
        userGuess = Int(guessSlider.value)
        userGuessLabel.text = String(userGuess)
    }
    
    @IBAction func guessButtonPressed(_ sender: Any) {
        // Check if the user got the right answer
        checkGuess()
            
    }
    
}

