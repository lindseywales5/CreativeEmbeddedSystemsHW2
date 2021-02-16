Lindsey Wales
Homework 2

Video link: https://youtu.be/xeJtangA3Ac

This program is based on a 90's computer game called Thinkin' Things. It makes use of the following hardware:
- One ESP32 microcontroller
- One Raspberry Pi 3B+
- One analog joystick
- One SPST switch
- Two momentary buttons
- One breadboard 
- Several wires and cables

The following additional materials are required:
- One roll of black duct tape
- A small amount of white paper
- A small amount of cardboard
- Green and blue markers
- An external monitor

In order to run this program, the hw2.ino file should be loaded onto the ESP32, which should be connected via serial USB cable to the Raspberry Pi. 
While that program runs play the Processing sketch, ProcessingCode.pde, on the Raspberry Pi. 

For the enclosure, construct a rectangular box shape by folding strips of duct tape in half to create long, sturdy planks. Tape those planks 
together, creating thin breaks where you want to fold the tape. Once you have a base with an open top, lower your hardware into the tape box. 
Complete the box, using small, folded up pieces of cardboard wrapped in duct tape as buttons, ensuring they align with the buttons on the 
breadboard and are sturdy enough to press the buttons when pushed. Tape pieces of white paper to the button covers and color them with colors 
corresponding to the buttons they press. Make sure to leave a hole in the duct tape so the switch is accessible. 

For the hardware, plug the ESP32 into the breadboard's GPIO at the top of the board. The buttons and switch can be inserted along the middle of the breadboard, 
with one wire to the GPIO pins (I used pins 25-27) and one to ground. The joystick should be connected to pins 12, 13, and 14, as well as power and ground. 

Instructions for interacting with the program are as follows:

Mode 1: 
In mode 1 the green and blue buttons are used to start the program and the joystick selects the size and color of the orb. Moving the joystick up and down 
will cause the orb to alternate colors until the user finds one they're happy with. Moving the joystick left and right changes the orb's size. Once 
selections have been made, flip the switch to go into mode 2.

Mode 2:
In mode two, moving the joystick will move the orb (with the qualities chosen in mode 1) around the screen. Pressing green turns the orb green, and pressing blue
goes to mode 3.

Mode 3:
In mode 3, a prompt appears telling the user to pick a number. Moving the joystick up increases the number on screen, and moving it down decreases it. 
When the user has reached the number they want to select, they can press the blue button and the specified number of orbs will appear, creating a geometric
pattern. Moving the joystick up or down goes back to the number selection screen and allows the user to pick a new number and produce a new pattern any 
number of times. 


