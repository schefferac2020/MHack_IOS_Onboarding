//
//  ViewController.swift
//  Number Guessing App
//

import UIKit

class ViewController: UIViewController {
    
    //Class Level Variables
    let lowerbound: Int = 1
    let upperBound: Int = 50
    
    var userGuess: Int = 1
    var magicNumber: Int!
    
    //MARK: - IB Outlets Here
    
    
    //MARK: - App Fucntions
    
    //The "init" function. This function gets called once right before the user can see the screen.
    //We usually do all the setup for our apps in this function
    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumber()
    }
    
    //Generates a random number that the user has to guess
    func generateRandomNumber(){
        //TODO
    }
    
    
    
    //MARK: - Put IB Actions Below Here
    
}

