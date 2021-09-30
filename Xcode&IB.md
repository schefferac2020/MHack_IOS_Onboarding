# Xcode and Interface Builder Intro
In this section we're gonna learn about the different sections of Xcode and also how to create a basic Graphical User Interface (GUI) in Interface Builder.

So open up Xcode and let's get started!


![Screen Shot 2021-09-16 at 4 43 22 PM](https://user-images.githubusercontent.com/54146662/133684074-1e008151-4441-41e9-a14f-afe6958cccdf.png)

Once you boot up your project, you might see a screen like this. There are two main portions: The file hierarchy on the left and the rest of the various app 
settings on the right. The file hierarchy, like any other code editor is how we access all of the important files (code and otherwise) that are used to make 
our app. The settings portion is mainly used for "signing you app" (getting it ready to be ported to an actual phone) or to install and connect libraries. If you're
interested, take a gander of some of the settings there are in all the tabs.

Once you're ready, head on over to "Main.storyboard" by clicking on it in the file hierarchy. 

## The Interface Builder
![IB](https://user-images.githubusercontent.com/54146662/133685634-a100be05-f8c7-4f46-9318-068c6f1e05ca.png)

The above screen is what Apple calls the "Interface Builder". It's a way of adding components (labels, buttons, sliders, text fields, etc) to the screen visually
so you don't __have__ to do it all through code (which you can do). There are three big sections. 
  - The Orange section is where you actually design your app. You can place elements on screen template and position everything the way you want. You'll notice that
  we already placed a slider and couple labels on the screen for you. On the left you'll see yet another hierarchy where you can select different elements.
  - The Green section is where you can select elements that you want added to the layout. Click the plus button in the top right to get it to show up and see what
  kind of stuff you can add. Everything is drag and drop
  - The Blue section is called the "Attribute Inspector." This is where you can modify an element's features (background color, font, size, etc). Click on some element on the screen and look at all the tabs in the attribute inspector for that element.


Once you're ready, try and add a label to the top of the screen and a button to the bottom of the screen. Can you change the text? The final result should look something like:

![Screen Shot 2021-09-16 at 5 24 52 PM](https://user-images.githubusercontent.com/54146662/133687919-95f8e8d6-2523-41f2-b5ab-d21720cf493a.png)
  
## Publishing to the App Store
No jk we won't do that __yet__. We will try running it on the iPhone simulator though!

![Screen Shot 2021-09-16 at 5 33 43 PM](https://user-images.githubusercontent.com/54146662/133688853-49bf62f8-6f35-4288-bc55-771114bb7188.png)

It's pretty self explanitory but the run button on the top left will run app. You can hook it up to have it build to your own iPhone if you want but there's a couple extra steps. For now we'll just run the app on the iPhone simulator that was installed when you downloaded Xcode. __Before you run it though__ make sure that your simulated phone type (at the base of the blue arrow) matches with the interface builder screen type at the bottom of the arrow. If not you can change the simulated phone type by just clicking it and selecting the right one. The reason we're doing this is because different phones all have different screen sizes, and you designed you app for the specific screen size in interface builder. Different screen sizes will screw up the relative positions of all the labels, buttons, etc and we don't want that. There are ways of making the alignment work for every apple device (They're called constraints) but we wont get into that right now. Feel free to look it up though!

\
Once you click run you should see your app running on the simulator! Click the button and move the slider around! Oh? It does nothing? That's pretty lame... well...

## Challenge
See if you can change some of the basic attributes of the UI elements on the screen (You might want to explore the "attribute inspector" to be pretty useful). This is what I made it look like: \
![Screen Shot 2021-09-23 at 1 00 42 AM](https://user-images.githubusercontent.com/54146662/134456755-1f96ce11-8204-430f-8a31-9be083a2f3d4.png) \
Feel free to experiment! Best way to learn is to experiment and break stuff. That's why cmd+z is a thing.

## Next Section
The next section is actually linking our UI elements up to the swift code and writing some Swift code to control the game! I'd recommend looking up a basic swift tutorial or two to get used to it.

Contact Drew[drewskis@umich.edu] or Thomas[thsm@umich.edu] if you have any questions.
