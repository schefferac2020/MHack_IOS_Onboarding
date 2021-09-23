# Game Logic and Control Flow
In this section we're going to go over how we use what we learned in the previous sections to actually build a playable game that you can build off of and experiment with. Try to experiment and try things out before we actually go over how to do something. We all learn best by doing! 

## Overview
In our game, we have a couple important variables that we'll want to keep track of and manipulate top have everything work smoothly. For now, these variables are defined at the top of the ViewController.swift file. 

```swift
let lowerbound: Int = 1
let upperBound: Int = 50

var userGuess: Int = 1
var magicNumber: Int!
```

We'll use lowerbound and upperbound to represent the lowest and highest guess that the user can make with the slider. These variables are constants (they do not change) so we define them using the let keyword. The userGuess variable will be used to store what the user has selected their guess to be. Finally, magicNumber will store the number that the user is trying to guess! This number isn't known when the class is initialized so we add an exlimation point at the end of its declaration. We'll get more into what these mean in the future.

## Task 1: Get the guess label to display the user's guess
We want the user to have some feedback about what their current guess currently actually is. To do this, we're going to update the "guessLabel" to be the value represented by the slider whenever the slider is interacted with. Before we move on, try to figure out for yourself what outlets and actions we'll need to get this feature to work.

We want to:
- Change the value of the guessLabel (Needs an __IBOutlet__ for the guessLabel)
- Read the value of the Guess Slider (Needs an __IBOutlet__ for the guessSlider)
- Update values when the Slider is moved (Needs an __IBAction__ for the guessSlider)

Use the exact same process that we learned in the previous section to connect your elements up to the ViewController code. 

When you're done, your ViewController.swift should look something like this:

<img width="1424" alt="Screen Shot 2021-09-23 at 5 21 58 PM" src="https://user-images.githubusercontent.com/54146662/134585999-65b46d72-791b-4744-a9d6-8c71892206dc.png">

So what do we want to have happened when the slider is dragged (aka its position is updated)? Well we eventually want to store its new value in the guessLabel and also set the userGuess variable at the top of the file. First things first though, see if you can print out the slider's value to the console whenever it is dragged. 

Does your code look like something like this? 
```swift
@IBAction func sliderDragged(_ sender: Any) {
        //This function gets called whenever the
        //Slider gets dragged.
        let value = guessSlider.value
        print(value)
}
```

Here we're using the slider's IBOutlet to get data about it, then print it to the screen. Try it out! See what it prints and when.

Now just printing the value isn't that useful. We want to set the label and variables to be equal to this value. See if you can change the text of the guessLabel to equal this number. Can you make it display only the digits only below the decimal point? Also, set the "userGuess" class variable to be equal to this integer number.

```swift
@IBAction func sliderDragged(_ sender: Any) {
        //This function gets called whenever the
        //Slider gets dragged.
        let value = Int(guessSlider.value)
        guessLabel.text = String(value)
        userGuess = value
}
```

Your code should look something like what's above. As long as it works! Try it out and run the app in the simulator.

## Task 2: Set the Number to guess at the beginning of the program.
This one is left to you! Working with iOS and swift means you'll have to look things up often. See if you can figure out how to set the "magicNumber" to some random number between our lowerBound and upperBound! For testing purposes, it might be better to set it to something constant so we can debug. Use print statements if you find them useful!

## Task 3: Checking the user's guess
When the user presses the button, we want the program to check if their entered guess was too low, too high, or just right. Does this sound like more like it needs an IBOutlet or an IBAction? That's right, it needs an IBAction because the user is interacting with something (in this case the button). Link a UIAction with the code and call it "guessButtonPressed" or something. 

When the button is pressed, call another function called "compareGuesses()" that will compare the userGuess to the magicNumber, and change the titleLabel accordingly (i.e. too low, too high, just right!).

```swift
@IBAction func guessButtonPressed(_ sender: Any) {
    compareGuesses()
}

func compareGuesses() -> Void {
    //TODO: Do comparisons and change the label
}
```

Try doing this on your own... once you're ```compareGuesses()``` might look something like:
```swift
@IBAction func guessButtonPressed(_ sender: Any) {
    compareGuesses()
}

func compareGuesses() -> Void {
    if userGuess < magicNumber {
        titleLabel.text = "Too LOW!! You're literally the most trash guesser that I've ever seen"
    } else if userGuess > magicNumber {
        titleLabel.text = "Too High!! Could you be any WORSE"
    }else{
        titleLabel.text = "You win!"
    }
}
```

And there you have it! You're first functional app! Run it and see how everthing turns out!

To Recap:
-  The ```viewDidLoad()``` function gets called once when the app screen loads.
-  When the slider is interacted with by the user, the IBAction function gets called and we store the value (which it gets through the IBOutlet) in the ```userGuess``` variable so that we can use it later.
-  When the user presses the button, the buttonPressed IBAction function gets called and it checks the ```userGuess``` compared to the ```magicNumber``` to see if the user was too high, too low, or won the game.

## Challenges
There are a bunch of places you can go from here! Here are a couple of ideas to help develop/solidify your skills. Feel free to look things up too, we all do lol.
- Change the layout of the app. Make it look prettier! Could move things around. Maybe add a background image?
- Make some counter that tells how many guesses the user made. Could track it with another label. Makes the game actually have a score.
- Make some array (or multiple arrays) to hold different sayings for when the user guesses too low or too high so it's not the same text every time. Can be as creative as you want. 
- Have a UIAlertViewcontroller show up when the user wins the game. (Might have to do some research to do this one) 
- Have a way for the user to reset the game! Easy if you do it with an alertViewController
- Have a whole different screen show up with a win message and # of guesses used. Will have to learn about segues, and passing data between screens in swift.
- Whatever your heart desires :)


Contact Drew[drewskis@umich.edu] or Thomas[thsm@umich.edu] if you have any questions.

