# Swift and Game Controller
In this section we'll be connecting the interface to the code (viewController.swift) so we can do interesting things on the screen and start making the actual game logic!

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

## Next Section
The next section is actually linking our UI elements up to the swift code and writing some Swift code to control the game! I'd recommend looking up a basic swift tutorial or two to get used to it.

Contact Drew[drewskis@umich.edu] or Thomas[thsm@umich.edu] if you have any questions.
