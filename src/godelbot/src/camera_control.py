#!/usr/bin/env python

from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
from datetime import datetime
from imutils.video import FPS
from godelbot.srv import set_camera_mode

import rospy

from threading import Thread

# import warnings
# warnings.filterwarnings('default', category=DeprecationWarning)

# ----------------------------------
# Threader Pi Camera Recording Class
# credit to www.pyimagesearch.com 
# ----------------------------------
class godelbotVideoStream:
    def __init__(self, resolution=(320, 240), framerate=15):
        #initalize the camera and stream
        self.resolution = resolution
        self.framerate = framerate
        self.frame = None
        self.stopped = False
        #self.camera = None
        #self.rawCapture = None
        #self.stream = None

    def start(self):
        self.stopped = False
        print "godelstream start"
        # starts the thread to read fromes from the video stream
        print "Initialising PiCamera()"
        self.camera = PiCamera()
        print "setting resolution"
        self.camera.resolution = self.resolution
        print "setting framerate"
        self.camera.framerate = self.framerate
        print "setting up rawCapture array"
        self.rawCapture = PiRGBArray(self.camera, size=self.resolution)
        print "setting up continuous capture stream"
        self.stream = self.camera.capture_continuous(self.rawCapture, format="bgr", use_video_port=True)
        print "Setting stop_preview"
        self.camera.stop_preview()        
        print "Starting update thread"
        Thread(target=self.update, args=()).start()
        return self

    def update(self):
        print "starting update loop"
        # keep looping until thread is stopped
        for vframe in self.stream:
            # grab the frame
            # print "setting latest frame"
            self.frame = vframe.array

            # clear the stream for the next fram
            # print "Truncating"
            self.rawCapture.truncate(0)
            # print "Truncated"

            # stop thread if the stop flag is set
            if self.stopped:
                self.stream.close()
                self.rawCapture.close()
                self.camera.close()
                return

    def read(self):
        # read most recent frame
        return self.frame

    def stop(self):
        print "godelstream end"
        # set the stop flag
        self.stopped = True

        

camera_on = False
stop_camera = False
godelStream = godelbotVideoStream()
fps = FPS()

def saveFrame():
    global godelStream
    global fps
    print "save frame"
    image = godelStream.read()     
    curtime = datetime.now().strftime("%Y-%m-%d-%H-%M-%S.%f") 
    cv2.imwrite("images/" + curtime + ".jpg",image)
    cv2.imshow("Image", image)
    fps.update()
    cv2.waitKey(1) # wait 1ms

def captureTraining():
    global stop_camera
    global camera_on
    global godelStream
    godelStream.start()
    print "back from godel start"
    cv2.startWindowThread()
    cv2.namedWindow('Image',cv2.WINDOW_NORMAL)
    print "resizeing windows"
    cv2.resizeWindow('Image',600,600)
    
    print "camera warmup"
    # allow camera to warm up
    time.sleep(1.0)
    fps.start()


    # grab an image
    running = True
    print "capture training with running: %d" % running
    while (running):
        t = Thread(target=saveFrame).start()
        print "ran saveframe thread"
        # try to approximate saving at 10 FPS
        time.sleep(0.065)
        if stop_camera: 
            print "stop received"
            cv2.destroyAllWindows()
            running = False
            print "before FPS stop"
            fps.stop()
            print "after FPS stop"
            godelStream.stop()
            camera_on = False
            print("elapsed time: {:.2f}".format(fps.elapsed()))
            print("approx FPS: {:.2f}".format(fps.fps()))
            break


def camera_mode_handler(val):
    global camera_on
    global stop_camera 
    # print "camera handler called with %d" % val.mode
    if (val.mode == 0):
        if not stop_camera:
            print "Stopping Camera"
            stop_camera = True
        else:
            print "Camera already stopped"
    elif (val.mode == 1):
        if not camera_on:
            print "Activating camera for training capture"
            camera_on = True
            stop_camera = False
            Thread(target=captureTraining).start()
            print "spawned captureTraining thread"
        else:
            print "Camera is already on"
    return True

def main():
    rospy.init_node('camera_control')
    s = rospy.Service('set_camera_mode',set_camera_mode,camera_mode_handler)
    print "camera control node ready"
    rospy.spin()

if __name__ == "__main__":
    main()
