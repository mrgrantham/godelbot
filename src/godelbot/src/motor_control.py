#!/usr/bin/env python
import RPi.GPIO as GPIO

import rospy
import threading
from time import sleep
from godelbot.msg import drive_param

IN_A    =   6
IN_B    =   13
IN_C    =   19
IN_D    =   26
LED_SIG =   21

movement = 0

def setup() :
    GPIO.setmode( GPIO.BCM )

    # configure LED
    GPIO.setup( LED_SIG, GPIO.OUT )

    #configure motors
    GPIO.setup( IN_A, GPIO.OUT )   # right positive A
    GPIO.setup( IN_B, GPIO.OUT )  # right negative B
    GPIO.setup( IN_C, GPIO.OUT )  # left  positive C
    GPIO.setup( IN_D, GPIO.OUT )  # left  negative D

def move_left_wheel(direction):
    if      ( direction == 1 ) : # go forward
        GPIO.output( IN_C, False )
        GPIO.output( IN_D, True  )
    elif ( direction == 2 ) : # go reverse
        GPIO.output( IN_C, True  )
        GPIO.output( IN_D, False )
    else :
        GPIO.output( IN_C, False )
        GPIO.output( IN_D, False )


def move_right_wheel(direction):
    if      ( direction == 1 ) : # go forward
        GPIO.output( IN_A, False )
        GPIO.output( IN_B, True  )
    elif ( direction == 2 ) : # go reverse
        GPIO.output( IN_A, True  )
        GPIO.output( IN_B, False )
    else :
        GPIO.output( IN_A, False )
        GPIO.output( IN_B, False )
def test():
        move_left_wheel( 1)
        sleep(1)
        move_left_wheel(-1)
        sleep(1)
        move_left_wheel(0)
        sleep(2)

        move_right_wheel( 1)
        sleep(1)
        move_right_wheel(-1)
        sleep(1)
        move_right_wheel(0)
        sleep(4)

def callback(data):
    global movement
    movement = data.movement


def motor_loop():
    global movement
    new_move = 0
    while True:
        if new_move != movement:
            new_move = movement
            move_right_wheel(movement & 3)
            move_left_wheel((movement >> 2) & 3)
        sleep(0.05)

def main():
    rospy.init_node('motor_control', anonymous=True)
    rospy.Subscriber("drive_parameters", drive_param, callback)
    setup()
    t=threading.Thread(target=motor_loop).start()
    rospy.spin()

if __name__ == "__main__": main()
