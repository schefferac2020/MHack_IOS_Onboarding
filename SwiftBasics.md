# Intro to Swift, Actions, and Outlets
In this section we'll be connecting the interface to the code (viewController.swift) so we can do interesting things on the screen and start making the actual game logic!

## IBOutlets
Navigate over to the main.storyboard. Currently all of the things on the screen are "unconnected." We want to have a way to have all of our UI elements (buttons, labels, sliders, etc) communicate with our code so we can do something more interesting with them. The two main ways that we do this is through things called IBActions and IBOutlets. 

![Screen Shot 2021-09-23 at 1 23 02 AM](https://user-images.githubusercontent.com/54146662/134458172-25bca185-055e-4678-a399-ea69afbd7c40.png)

IBActions are essentially ways for interface elements (a button for example) to call some function in code when the user performs some action (like pressing the button). IBOutlets are almost the opposite. IBOutlets give the code access to control, change, and have access to some element to something on the screen. For example, I could change the text color of the label in the above picture by first setting up an IBOutlet to the label, then changing the color. We'll go over the details of how to do this in a minute.

Xcode has a really cool feature where you can manually create these connections by clicking and dragging elements directly into the code. In the main.storyboard file, look at the top right and click the Assistant button as shown in the picture below. 

<img width="1432" alt="Screen Shot 2021-09-23 at 1 31 29 AM" src="https://user-images.githubusercontent.com/54146662/134458799-a1afcfe9-614e-4bf7-baaf-f072943f1e35.png">

You should then see your screen split into two (one section being the UIStoryboard, one section being a code file named ViewController.swift). Like below.

<img width="1415" alt="Screen Shot 2021-09-23 at 1 36 30 AM" src="https://user-images.githubusercontent.com/54146662/134459043-9186861f-2224-448a-9263-b3189be378ef.png">

Take a look around this swift file to get yourself a bit familiar with how everything works. Some key points are that all of the code is inside this class called "ViewController" and inherits from another class. You'll also see that there's this function:
```swift
override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumber()
}
```
This function is pretty important. Basically it gets run once by the iPhone right before everything gets loaded to the screen. We'll use it usually to do any "setup" before running the rest of the code. For exmaple, for your guessing game, we likely want a random number to be generated when game starts. That's why we call 
```swift 
generateRandomNumber()
``` 
in viewDidLoad()! There are a bunch of other functions that you can impliment instead of viewDidLoad and I recommend looking online for more information about what functions can be called when if you're interested.


Now say we want to give this program access to the big label at the top of the screen. In other words we need to make an IBOutlet for this label. To do this, select the label on the screen, hold down the control key, and drag over to the place in the code that says "IB Outlets Here". Usually we put our outlets near the top of the file. 

![image](https://user-images.githubusercontent.com/54146662/134459804-f48b1c77-ff97-4f12-bfb9-a797f1e61fdd.png)

A prompt like the one above should pop up asking you what kind of a connection you want to make. All you should have to change is the name though. This connection is basically creating a variable that you can modify and use that is directly related to the actual label that is displayed to the screen.

So let's change the text! At the end of your viewDidLoad() function add something like.
```swift 
titleLabel.text = "Hello World!"
```
Now run your app and see what is displays! \ 
It can be interesting to see what other things you can mess around with too. If you just type in "titleLable." (note the dot at the end) a big list of all the different attributes you have access to will pop up. Xcode is really nice with this feature too, where you get pretty detailed descriptions of what all of them are/do and links to the official Apple documentation if you want to read more about something in particular.

So there you go! You created your first outlet!

## IBActions
As we said above, actions are ways for UI elements to make the code do things when they're interacted with (when the user performs an "action" on them). So when a button is pressed, for example, some function in our code is going to be called that can do something that we want to have happen. \

The way we connect an action to the code is the exact same way we connect an outlet to the code. Click on the element on the screen, and control drag to the code file. 

<img width="929" alt="Screen Shot 2021-09-23 at 2 20 54 AM" src="https://user-images.githubusercontent.com/54146662/134462391-dd5a0c0c-b751-4acb-af37-38b58e70e282.png">

Name it something informative like in the picture and hit connect! 

```swift
@IBAction func guessButtonPressed(_ sender: Any) {
        print("The button was pressed!")
}
```

You'll notice a couple key differences with what an IBAction connection looks like and what an IBOutlet connection looked like. First off, it's a function! This makes sense because when the button is pressed, we want the code to do something that we define. Right now it prints to the debug console "The button was pressed"

If you run the app in the simulator you'll notice that it is actually printing this to the console every time that you press the button.

Congrats! You're now an IBAction/IBOutlet GOD

## Challenge
Feel free to look stuff up!
- Can you make the label change its text when you tap the button?
- Can you make the label change colors every time you tap the button?
- Can you change the position of the button when you click on it?


## Next Section
Next time we're gonna be using our knowledge of actions and outlets to actually make the game.

Contact Drew[drewskis@umich.edu] or Thomas[thsm@umich.edu] if you have any questions.
