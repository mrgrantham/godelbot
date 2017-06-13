
from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
from datetime import datetime
from imutils.video import FPS

import rospy

from threading import Thread

# ----------------------------------
# Threader Pi Camera Recording Class
# credit to www.pyimagesearch.com 
# ----------------------------------
class godelbotVideoStream:
    def __init__(self, resolution=(320, 240), framerate=15):
        #initalize the camera and stream
        self.camera = PiCamera()
        self.camera.resolution = resolution
        self.camera.framerate = framerate
        self.rawCapture = PiRGBArray(self.camera, size=resolution)
        self.stream = self.camera.capture_continuous(self.rawCapture, format="bgr", use_video_port=True)

        self.frame = None
        self.stopped = False
        self.camera.stop_preview()        

    def start(self):
        # starts the thread to read fromes from the video stream
        Thread(target=self.update, args=()).start()
        return self

    def update(self):
        # keep looping until thread is stopped
        for vframe in self.stream:
            # grab the frame
            self.frame = vframe.array

            # clear the stream for the next fram
            self.rawCapture.truncate(0)

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
        # set the stop flag
        self.stopped = True

        
def saveFrame(godelStream, fps):
    image = godelStream.read()     
    curtime = datetime.now().strftime("%Y-%m-%d-%H-%M-%S.%f") 
    cv2.imwrite("images/" + curtime + ".jpg",image)
    cv2.imshow("Image", image)
    fps.update()

def captureTraining():
    godelStream = godelbotVideoStream().start()

    cv2.namedWindow('Image',cv2.WINDOW_NORMAL)
    #cv2.resizeWindow('Image',600,600)


        # allow camera to warm up
    time.sleep(1.0)
    fps = FPS().start()


    # grab an image
    running = True
    while (running):
        t = Thread(target=saveFrame(godelStream, fps))
        # try to approximate saving at 10 FPS
        time.sleep(0.065)
        k = cv2.waitKey(1) # wait 1ms
        if k == 27: # esc key i guess
            cv2.destroyAllWindows()
            running = False
            fps.stop()
            godelStream.stop()
            print("elapsed time: {:.2f}".format(fps.elapsed()))
            print("approx FPS: {:.2f}".format(fps.fps()))
            break



def main():
    captureTraining()

if __name__ == "__main__":
    main()
