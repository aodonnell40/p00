# Project 00 For NeXT CS
### Class Period:
### Name0: YOUR NAME HERE
### Name1: OTHER NAME HERE (delete this line if you are working solo)
---

Your goal is to write a functional analog clock program, like the one above. Your code must contain the following (but can, and should, have other things).
* Global variables:
  - A variable each for hours, minutes and seconds.
  - Other global variables you deem necessary.
* Methods:
  * `setup`
    - Initialize the time global variables using the current time.
      - Check out the [`hour()`](https://processing.org/reference/hour_.html) and other related time methods (you can find them all on the page linked here).
    - Perform other necessary setup actions.
  * `draw`
    - Using the functions listed below, draw an analog clock that updates every second.
  * `clockFace`
    - Draws the face of the clock.
  * `updateTime`
    - Should update the time global variables appropraitely.
  * `timeToAngle`
    - Takes a number representing an amount of time (either hours, minutes or seconds), and returns the correct angle for a clock hand, in radians.
    - You may use any combination of parameters you deem necessary.
    - For example, if the time provided is 3 hours, the returned value should be PI/2 (90 degrees).
    - If the time provided is 3 minutes, the returned value should be PI/10 (18 degrees).
  * `drawHand`
    - Takes a number representing an amount of time (either hours, minutes or seconds), and draws the appropraite clock hand.
    - Each hand should be different visually. You will probably want to include parameters to help with this.
    - This function should call `timeToAngle` to get the appropraite angle.

Once again, you may (and probably should) include extra methods and variables as you see fit.

Important features you need to implement:
* Different colors for the background and clock face.
* Clock hands that move correctly, including the second hand.
* Clock hands that are different in appearance.

If you would like to improve upon this version, here are some things you might consider adding:
* Marks for hours, minutes.
* Adding numbers to the display.
* Including the date in some way.
* Other cool visual features.
